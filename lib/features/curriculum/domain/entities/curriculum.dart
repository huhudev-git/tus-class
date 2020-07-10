import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Curriculum extends Equatable {
  final String code;
  final String course;
  final String teacher;
  final String semester;
  final int year;
  final int day;
  final int period;
  final bool hasDetail;

  const Curriculum({
    @required this.code,
    @required this.course,
    @required this.teacher,
    @required this.semester,
    @required this.year,
    @required this.day,
    @required this.period,
    @required this.hasDetail,
  });

  @override
  List<Object> get props => [
        code,
        course,
        teacher,
        semester,
        year,
        day,
        period,
        hasDetail,
      ];
}
