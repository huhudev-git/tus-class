import 'package:dio/dio.dart';

abstract class Page {
  String get url;
  bool get hasPageId => true;
  bool get postPageId => true;
  bool get isPost => true;
  Map get data => null;
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);
  Map<String, dynamic> get queryParameters => null;
  Page get parent;
}
