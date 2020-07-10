import 'dart:math';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'abstract_page/indirect_page.dart';
import 'abstract_page/page.dart';
import 'grade_search_page.dart';
import 'resolver/grade_search_list_resolver.dart';
import 'resolver/last_page_resolver.dart';

class GradeSearchListPage extends Equatable with GradeSearchListResolver, LastPageResolver implements IndirectPage {
  final String key;
  final String year;
  final String semester;
  final String subject;
  final String grade;
  final String day;
  final String period;
  final bool isMyself;
  final bool isIntensive;
  final bool teacher;

  GradeSearchListPage({
    @required this.key,
    @required this.year,
    @required this.semester,
    @required this.subject,
    @required this.grade,
    @required this.day,
    @required this.period,
    @required this.isMyself,
    @required this.isIntensive,
    @required this.teacher,
  });

  @override
  String toString() => 'GradeSearchListPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/xu/Xut10701A.jsp';

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
      'form1:htmlKamokName': teacher ? '' : key,
      'form1:htmlKyoinSimei': teacher ? key : '',
      'form1:htmlGakka': subject,
      'form1:htmlGakunen': grade,
      'form1:htmlYobi': day,
      'form1:htmlJigen': period,
      'form1': 'form1',
      'form1:htmlShikibetsuKbn': '4',
      'form1:htmlKanriNo': '1000473289',
      'form1:search.x': Random().nextInt(44).toString(),
      'form1:search.y': Random().nextInt(18).toString(),
    };

    if (isMyself == true) {
      payload['form1:htmlOnlyRsyuJugyo2'] = 'on';
    }
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
  Page get parent => GradeSearchPage();

  @override
  List<Object> get props => [key, year, semester, subject, grade, day, period, isMyself, isIntensive, teacher];
}
