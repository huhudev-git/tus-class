import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'home_page.dart';
import 'index_page.dart';
import 'resolver/category_resolver.dart';
import 'resolver/last_page_resolver.dart';
import 'resolver/messages_resolve.dart';

class CategoryPage extends Equatable with MessagesResolve, CategoryResolver, LastPageResolver implements IndirectPage {
  final int categoryId;
  final int page;

  CategoryPage({
    @required this.categoryId,
    this.page = 0,
  });

  @override
  String toString() => 'CategoryPage(id: $categoryId, page: $page)';

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
    HomePage.isAllCategory = false;

    final payload = {
      'form1:Poa00101A:htmlCurDate': DateTime.now().toString().split(' ')[0],
      'form1:Poa00101A:htmlHidden_selectDay': DateTime.now().toString().split(' ')[0],
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
      'form1:Poa00201A:htmlParentTable:$categoryId:htmlDisplayOfAll:0:allInfoLinkCommand': '',
      'form1:htmlKeijiSearchOpenFlg': '0',
      'form1': 'form1',
    };

    if (page == 0) {
      payload['form1:Poa00201A:htmlParentTable:$categoryId:htmlDisplayOfAll:0:allInfoLinkCommand'] = '';
    } else {
      payload['form1:Poa00201A:htmlParentTable:htmlDetailTbl2:web1__pagerWeb'] = page.toString();
    }

    return payload;
  }

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent {
    if (page == 0) {
      return IndexPage();
    } else {
      return CategoryPage(categoryId: categoryId);
    }
  }

  @override
  List<Object> get props => [categoryId];
}
