import 'dart:math';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'abstract_page/download_page.dart';
import 'abstract_page/page.dart';

class MessageFilePage extends Equatable implements DownloadPage {
  final String messagePageId;
  final int index;
  final String name;
  final Function(int, int) callback;

  const MessageFilePage({
    @required this.messagePageId,
    @required this.index,
    @required this.name,
    this.callback,
  });

  @override
  String toString() => 'MessageFilePage';

  @override
  String get filename => name;

  @override
  Function(int, int) get onReceiveProgress => callback;

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/po/pPoa0202A.jsp';

  @override
  bool get hasPageId => false;

  @override
  bool get postPageId => false;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        'form1:htmlFileTable:$index:downLoadButton.x': Random().nextInt(14).toString(),
        'form1:htmlFileTable:$index:downLoadButton.y': Random().nextInt(14).toString(),
        'form1:htmlParentFormId': '',
        'form1:htmlDelMark': '',
        'form1:htmlRowKeep': '',
        'com.sun.faces.VIEW': messagePageId,
        'form1': 'form1',
      };

  @override
  Options get options => Options(
        responseType: ResponseType.stream,
        method: 'POST',
      );

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => null;

  @override
  List<Object> get props => [messagePageId, index, name];
}
