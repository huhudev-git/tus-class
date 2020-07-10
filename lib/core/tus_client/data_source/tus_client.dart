import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:mutex/mutex.dart';

import '../../errors/exceptions.dart';
import '../pages/abstract_page/download_page.dart';
import '../pages/abstract_page/page.dart';
import '../pages/login_page.dart';

@lazySingleton
class TUSClient {
  final Mutex _pageLock = Mutex();
  final Mutex _pagesLock = Mutex();
  final Dio _dio;

  String formUrl = 'https://class.admin.tus.ac.jp/up/faces/up/po/Poa00601A.jsp';
  String pageId;
  Page currentPage;

  TUSClient({@required Dio dio})
      : assert(dio != null),
        _dio = dio;

  Future<void> init() async {
    await get(LoginPage());
  }

  Future<String> download(DownloadPage page) async {
    final path = await DownloadPage.path();
    final filePath = '$path/${page.filename}';

    await _dio.download(
      page.url,
      filePath,
      onReceiveProgress: page.onReceiveProgress,
      options: page.options,
      data: page.data,
    );

    return filePath;
  }

  Future<Response> requests(List<Page> pages) async {
    _pagesLock.acquire();
    try {
      Response r;
      for (final page in pages) {
        r = await request(page);
      }
      return r;
    } finally {
      _pagesLock.release();
    }
  }

  Future<Response> request(Page page) async {
    _pageLock.acquire();
    try {
      if (page.isPost) {
        return post(page);
      } else {
        return get(page);
      }
    } finally {
      _pageLock.release();
    }
  }

  Future<Response> get(Page page) async {
    final Response r = await _dio.get(
      page.url,
      options: page.options,
      queryParameters: page.queryParameters,
    );

    final content = r.data.toString();

    // update page id
    if (page.hasPageId) {
      // update current page
      //print("[GET]Logic: $currentPage -> $page");
      pageId = getPageId(content);
      formUrl = getFromUrl(content);
      currentPage = page;
    }

    if (isSessionOut(content)) {
      throw TUSSessionOutException();
    }

    return r;
  }

  Future<Response> post(Page page) async {
    final data = page.data;

    // set page id
    if (page.postPageId) {
      data['com.sun.faces.VIEW'] = pageId;
    }

    String url;
    if (page.url == 'https://class.admin.tus.ac.jp/up/faces/up/po/Poa00601A.jsp') {
      url = formUrl;
    } else {
      url = page.url;
    }

    final Response r = await _dio.post(
      url,
      options: page.options,
      data: data,
    );

    final content = r.data.toString();
    //debugPrint(content);

    // update page id
    if (page.hasPageId) {
      // update current page
      //print("[POST]Logic: $currentPage -> $page");
      pageId = getPageId(content);
      formUrl = getFromUrl(content);
      currentPage = page;
    }

    if (isSessionOut(content)) {
      throw TUSSessionOutException();
    }

    return r;
  }

  static String getPageId(String content) {
    final pageId = RegExp(r"(_id\d+:_id\d+)").stringMatch(content) ?? '';
    if (pageId.isEmpty) {
      throw TUSNULLPageIdException();
    }
    return pageId;
  }

  static bool isSessionOut(String content) {
    final exp = RegExp(r"[\S\s]{100}\.\./\.\./image/ja/def/button/lit\.gif[\S\s]{100}", caseSensitive: false);
    return exp.hasMatch(content);
  }

  // Warning: url [po/Poa00601A.jsp] may change during session (class why do this!!!)
  static String getFromUrl(String content) {
    final path = RegExp(r'<form id="header:form1" method="post" action="([\S\s]+?)" class="form" enctype="application/x-www-form-urlencoded">', caseSensitive: false).firstMatch(content);
    if (path != null) {
      return 'https://class.admin.tus.ac.jp${path.group(1)}';
    } else {
      return 'https://class.admin.tus.ac.jp/up/faces/up/po/Poa00601A.jsp';
    }
  }
}
