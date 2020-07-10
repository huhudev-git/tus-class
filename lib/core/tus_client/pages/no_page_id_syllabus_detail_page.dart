import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'resolver/syllabus_search_detail_resolver.dart';

class NoPageIdSyllabusDetailPage extends Equatable with SyllabusSearchDetailResolver implements IndirectPage {
  final int year;
  final String code;

  NoPageIdSyllabusDetailPage({this.year, this.code});

  @override
  String toString() => 'NoPageIdSyllabusDetailPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/km/pKms0804A.jsp';

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
        'sanshoTblFlg': '1',
        'nendo': year.toString(),
        'jugyoCd': code,
      };

  @override
  Page get parent => null;

  @override
  List<Object> get props => [year, code];
}
