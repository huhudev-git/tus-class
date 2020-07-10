import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'resolver/last_page_resolver.dart';
import 'resolver/syllabus_search_list_resolver.dart';

class SyllabusSearchListPagePage extends Equatable with SyllabusSearchListResolver, LastPageResolver implements IndirectPage {
  final int page;

  SyllabusSearchListPagePage({this.page});

  @override
  String toString() => 'SyllabusSearchListPagePage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/km/Kms00802A.jsp';

  @override
  bool get postPageId => true;

  @override
  bool get hasPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        'form1:htmlKekkatable:web1__pagerWeb': page,
        'form1:htmlPage': '0',
        'form1': 'form1',
        'form1:_idcl': '',
      };

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => null;

  @override
  List<Object> get props => [page];
}
