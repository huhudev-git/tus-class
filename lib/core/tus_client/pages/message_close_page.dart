import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'category_page.dart';
import 'index_page.dart';

class MessageClosePage extends Equatable implements IndirectPage {
  final int index;
  final int categoryId;
  final String link;

  const MessageClosePage({
    @required this.index,
    @required this.categoryId,
    this.link = '2',
  });

  @override
  String toString() => 'MessageClosePage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/ajax/up/co/RemoveSessionAjax?target=null&windowName=Poa00201A&pcClass=com.jast.gakuen.up.po.PPoa0202A';

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
  Map<String, dynamic> get queryParameters => null;

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
  List<Object> get props => [];
}
