import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'category_page.dart';
import 'index_page.dart';
import 'resolver/message_resolver.dart';

class MessagePage extends Equatable with MessageResolve implements IndirectPage {
  final int index;
  final int categoryId;
  final String link;

  const MessagePage({
    @required this.index,
    @required this.categoryId,
    this.link = '2',
  });

  @override
  String toString() => 'MessagePage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/po/pPoa0202A.jsp';

  @override
  bool get hasPageId => false;

  @override
  bool get postPageId => false;

  @override
  bool get isPost => false;

  @override
  Map get data => null;

  @override
  Options get options => null;

  @override
  Map<String, dynamic> get queryParameters => {
        'fieldId': 'form1:Poa00201A:htmlParentTable:${(link == '1') ? categoryId : 0}:htmlDetailTbl2:$index:linkEx$link',
      };

  @override
  Page get parent {
    // index page
    if (link == '1') {
      return IndexPage();
      // category page
    } else {
      return CategoryPage(categoryId: categoryId);
    }
  }

  @override
  List<Object> get props => [categoryId, index];
}
