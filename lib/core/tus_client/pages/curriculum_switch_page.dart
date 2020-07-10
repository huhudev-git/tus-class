import 'dart:math';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'curriculum_page.dart';
import 'resolver/curriculum_resolver.dart';

class CurriculumSwitchPage extends Equatable with CurriculumResolver implements IndirectPage {
  final int year;
  final String semester;

  CurriculumSwitchPage({
    this.year,
    this.semester,
  });

  @override
  String toString() => 'CurriculumSwitchPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/xu/Xut10001A.jsp';

  @override
  bool get hasPageId => true;

  @override
  bool get postPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data => {
        'form1:kaikoNendoInput': year.toString(),
        'form1:htmlGakki': semester,
        'form1:HyojiKeishiki': '0',
        'form1:search.x': Random().nextInt(44).toString(),
        'form1:search.y': Random().nextInt(18).toString(),
        'form1': 'form1',
      };

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => CurriculumPage();

  @override
  List<Object> get props => [year, semester];
}
