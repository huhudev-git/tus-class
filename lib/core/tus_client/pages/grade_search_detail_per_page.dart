import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/direct_page.dart';
import 'abstract_page/page.dart';

class GradeSearchDetailPerPage extends Equatable implements DirectPage {
  final int page;
  final int index;

  const GradeSearchDetailPerPage({this.page, this.index});

  @override
  String toString() => 'GradeSearchDetailPerPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/xu/Xut10702A.jsp';

  @override
  bool get hasPageId => true;

  @override
  bool get postPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        'form1:htmlKekkatable:web1__pagerWeb': page.toString(),
        'form1:htmlPage': '0',
        'form1': 'form1',
        'form1:_idcl': 'form1:htmlKekkatable:$index:edit',
      };

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => null;

  @override
  List<Object> get props => [page, index];
}
