import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/direct_page.dart';
import 'abstract_page/page.dart';
import 'index_page.dart';
import 'resolver/category_resolver.dart';
import 'resolver/messages_resolve.dart';

class HomePage extends Equatable with MessagesResolve, CategoryResolver implements DirectPage {
  static bool isAllCategory = true;

  @override
  String toString() => 'HomePage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/po/Poa00601A.jsp';

  @override
  bool get hasPageId => true;

  @override
  bool get postPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        'header:form1:home': 'ホーム',
        'header:form1:hiddenMenuNo': '',
        'header:form1:hiddenFuncRowId': '',
        'header:form1': 'header:form1',
      };

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => isAllCategory ? null : IndexPage();

  @override
  List<Object> get props => [];
}
