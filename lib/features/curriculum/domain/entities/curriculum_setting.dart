import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class CurriculumSetting extends Equatable {
  final String code;
  final String form;
  final String room;
  final String department;
  final String category;
  final String subject;
  final String grade;
  final String course;

  const CurriculumSetting({
    @required this.code,
    @required this.form,
    @required this.room,
    @required this.department,
    @required this.category,
    @required this.subject,
    @required this.grade,
    @required this.course,
  });

  @override
  List<Object> get props => [code, form, room, department, category, subject, grade, course];
}
