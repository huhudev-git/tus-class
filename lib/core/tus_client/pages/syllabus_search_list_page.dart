import 'dart:math';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'resolver/last_page_resolver.dart';
import 'resolver/syllabus_search_list_resolver.dart';
import 'syllabus_search_page.dart';

class SyllabusSearchListPage extends Equatable with SyllabusSearchListResolver, LastPageResolver implements IndirectPage {
  final String key;
  final String year;
  final String semester;
  final String category;
  final String subject;
  final String grade;
  final String day;
  final String period;
  final bool isIntensive;
  final bool teacher;

  SyllabusSearchListPage({
    @required this.key,
    @required this.year,
    @required this.semester,
    @required this.category,
    @required this.subject,
    @required this.grade,
    @required this.day,
    @required this.period,
    @required this.isIntensive,
    @required this.teacher,
  });

  @override
  String toString() => 'SyllabusSearchListPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/km/Kms00801A.jsp';

  @override
  bool get postPageId => true;

  @override
  bool get hasPageId => true;

  @override
  bool get isPost => true;

  @override
  Map get data {
    final payload = {
      'form1:htmlNendo': year,
      'form1:htmlGakkiNo': semester,
      'form1:htmlKamokJugyo': category,
      'form1:htmlKamokName': teacher ? '' : key,
      'form1:htmlKyoinSimei': teacher ? key : '',
      'form1:htmlGakka': subject,
      'form1:htmlGakunen': grade,
      'form1:htmlYobi': day,
      'form1:htmlJigen': period,
      'form1:htmlKeyword': '', // not use here
      'form1:htmlShikibetsuKbn': '4',
      'form1:htmlKanriNo': '1000473289',
      'form1:search.x': Random().nextInt(44).toString(),
      'form1:search.y': Random().nextInt(18).toString(),
      'form1': 'form1',
    };

    if (isIntensive == true) {
      payload['form1:htmlSyutyu'] = 'on';
    }

    return payload;
  }

  @override
  Options get options => Options(contentType: Headers.formUrlEncodedContentType);

  @override
  Map<String, dynamic> get queryParameters => null;

  @override
  Page get parent => SyllabusSearchPage();

  @override
  List<Object> get props => [key, year, semester, category, subject, grade, day, period, isIntensive, teacher];
}
