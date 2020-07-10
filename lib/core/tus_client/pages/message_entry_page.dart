import 'dart:math';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'abstract_page/direct_page.dart';
import 'abstract_page/page.dart';

class MessageEntryPage extends Equatable implements DirectPage {
  final bool state;
  final String pageId;

  const MessageEntryPage({
    @required this.state,
    @required this.pageId,
  });

  @override
  String toString() => 'MessageEntryPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/po/pPoa0202A.jsp';

  @override
  bool get hasPageId => false;

  @override
  bool get postPageId => false;

  @override
  bool get isPost => true;

  @override
  Map<String, dynamic> get data {
    String param;
    if (state == true) {
      param = 'subscript';
    } else {
      param = 'CanncelButton';
    }

    return {
      'form1:$param.x': Random().nextInt(44).toString(),
      'form1:$param.y': Random().nextInt(18).toString(),
      'form1:htmlParentFormId': '',
      'form1:htmlDelMark': '',
      'form1:htmlRowKeep': '',
      'com.sun.faces.VIEW': pageId,
      'form1': 'form1',
    };
  }

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => null;

  @override
  List<Object> get props => [pageId];
}
