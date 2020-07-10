import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'abstract_page/direct_page.dart';
import 'abstract_page/page.dart';
import 'resolver/teacher_resolver.dart';

class TeacherPage extends Equatable with TeacherResolver implements DirectPage {
  final String teacherId;
  final String code;
  final int year;

  TeacherPage({this.teacherId, this.code, this.year});

  @override
  String toString() => 'TeacherPage';

  @override
  String get url => 'https://class.admin.tus.ac.jp/up/faces/up/xu/pXut02802A.jsp';

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
        'nendo': year.toString(),
        'jugyoCd': code,
        'kyoinCd': teacherId,
      };

  @override
  Page get parent => null;

  @override
  List<Object> get props => [teacherId, year, code];
}
