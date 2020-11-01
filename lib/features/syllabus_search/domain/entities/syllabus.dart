import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Syllabus extends Equatable {
  final String code;
  final String course;
  final String teacher;
  final String semester;
  final String subject;
  final String type;
  final int page;
  final int year;
  final int day;
  final List<int> periods;

  const Syllabus({
    @required this.code,
    @required this.course,
    @required this.teacher,
    @required this.semester,
    @required this.subject,
    @required this.type,
    @required this.page,
    @required this.year,
    @required this.day,
    @required this.periods,
  });

  @override
  List<Object> get props => [
        code,
        course,
        teacher,
        semester,
        subject,
        type,
        page,
        year,
        day,
        periods,
      ];
}
