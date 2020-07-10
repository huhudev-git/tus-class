import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'resolver/syllabus_search_detail_resolver.dart';

class SyllabusSearchDetailBackPage extends Equatable with SyllabusSearchDetailResolver implements IndirectPage {
  final String code;
  final int year;

  SyllabusSearchDetailBackPage({this.code, this.year});

  @override
  String toString() => 'SyllabusSearchDetailBackPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/km/Kms00803A.jsp';

  @override
  bool get hasPageId => true;

  @override
  bool get postPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        "form1:backhidden": "戻る",
        "form1:htmlJugyoCd": code,
        "form1:htmlNendo": year.toString(),
        "form1:htmlSanshoTblFlg": "1",
        "form1": "form1",
      };

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => null;

  @override
  List<Object> get props => [year, code];
}
