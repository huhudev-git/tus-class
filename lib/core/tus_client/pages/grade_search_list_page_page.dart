import 'dart:math';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'resolver/grade_search_list_resolver.dart';
import 'resolver/last_page_resolver.dart';

class GradeSearchListPagePage extends Equatable with GradeSearchListResolver, LastPageResolver implements IndirectPage {
  final int page;

  GradeSearchListPagePage({this.page});

  @override
  String toString() => 'GradeSearchListPagePage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/xu/Xut10702A.jsp';

  @override
  bool get postPageId => true;

  @override
  bool get hasPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        'form1:htmlKekkatable:deluxe1__pagerNext.x': Random().nextInt(22).toString(),
        'form1:htmlKekkatable:deluxe1__pagerNext.y': Random().nextInt(19).toString(),
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
