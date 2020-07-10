import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'resolver/syllabus_search_detail_resolver.dart';

class SyllabusSearchDetailPage extends Equatable with SyllabusSearchDetailResolver implements IndirectPage {
  final int page;
  final int index;

  SyllabusSearchDetailPage({this.page, this.index});

  @override
  String toString() => 'SyllabusSearchDetailPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/km/Kms00802A.jsp';

  @override
  bool get hasPageId => true;

  @override
  bool get postPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        "form1:htmlKekkatable:web1__pagerWeb": page.toString(),
        "form1:htmlPage": "0",
        "form1": "form1",
        "form1:_idcl": "form1:htmlKekkatable:$index:edit",
      };

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  // no params to return SyllabusSearchListPage
  // use SyllabusSearchDetailBackPage instead
  @override
  Page get parent => null;

  @override
  List<Object> get props => [page, index];
}
