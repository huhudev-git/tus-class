import 'dart:math';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/direct_page.dart';
import 'abstract_page/page.dart';
import 'home_page.dart';
import 'resolver/category_resolver.dart';
import 'resolver/messages_resolve.dart';

class IndexPage extends Equatable with MessagesResolve, CategoryResolver implements DirectPage {
  final String date;
  final int page;

  IndexPage({this.date, this.page});

  @override
  String toString() => 'IndexPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/po/Poa00601A.jsp';

  @override
  bool get hasPageId => true;

  @override
  bool get postPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data {
    if (HomePage.isAllCategory) {
      return {
        'header:form1:home': 'ホーム',
        'header:form1:hiddenMenuNo': '',
        'header:form1:hiddenFuncRowId': '',
        'header:form1': 'header:form1',
      };
    }

    HomePage.isAllCategory = true;
    return {
      'form1:Poa00101A:htmlCurDate': DateTime.now().toString().split(' ')[0],
      'form1:Poa00101A:htmlHidden_selectDay': date ?? DateTime.now().toString().split(' ')[0],
      'form1:hidden1': '',
      'form1:Poa00401A:selectJugyo': '',
      'form1:Poa00301A:htmlPrjTable:0:htmlLinkUrl': 'http://www.tus.ac.jp/',
      'form1:Poa00301A:htmlPrjTable:0:htmlLinkPrm': '',
      'form1:Poa00301A:htmlPrjTable:0:htmlLinkMtd': 'POST',
      'form1:Poa00301A:htmlPrjTable:1:htmlLinkUrl': 'http://www.suwa.tus.ac.jp/',
      'form1:Poa00301A:htmlPrjTable:1:htmlLinkPrm': '',
      'form1:Poa00301A:htmlPrjTable:1:htmlLinkMtd': 'POST',
      'form1:Poa00301A:htmlPrjTable:2:htmlLinkUrl': 'http://www.tus.ac.jp/library/',
      'form1:Poa00301A:htmlPrjTable:2:htmlLinkPrm': '',
      'form1:Poa00301A:htmlPrjTable:2:htmlLinkMtd': 'POST',
      'form1:Poa00301A:htmlPrjTable:3:htmlLinkUrl': 'https://www.suwa.tus.ac.jp/library/',
      'form1:Poa00301A:htmlPrjTable:3:htmlLinkPrm': '',
      'form1:Poa00301A:htmlPrjTable:3:htmlLinkMtd': 'POST',
      'form1:Poa00201A:htmlParentTable:0:htmlHeaderTbl:0:retrurn.x': Random().nextInt(42).toString(),
      'form1:Poa00201A:htmlParentTable:0:htmlHeaderTbl:0:retrurn.y': Random().nextInt(15).toString(),
      'form1:Poa00201A:htmlParentTable:htmlDetailTbl2:web1__pagerWeb': page?.toString() ?? '0',
      'form1:htmlKeijiSearchOpenFlg': '0',
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
  List<Object> get props => [date];
}
