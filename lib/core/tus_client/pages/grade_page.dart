import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/direct_page.dart';
import 'abstract_page/page.dart';
import 'index_page.dart';
import 'resolver/grade_resolver.dart';

class GradePage extends Equatable with GradeResolver implements DirectPage {
  @override
  String toString() => 'GradePage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/po/Poa00601A.jsp';

  @override
  bool get postPageId => true;

  @override
  bool get hasPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        'header:form1:htmlMenuItemButton': '実行',
        'header:form1:hiddenMenuNo': '401',
        'header:form1:hiddenFuncRowId': '0',
        'header:form1': 'header:form1',
      };

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => IndexPage();

  @override
  List<Object> get props => [];
}
