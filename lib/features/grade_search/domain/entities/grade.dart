import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Grade extends Equatable {
  final String course;
  final String subject;
  final String semester;
  final String code;
  final int day;
  final List<int> periods;
  final String teacher;
  final int year;
  final int people;
  final double s;
  final double a;
  final double b;
  final double c;
  final double d;
  final int page;
  final bool hasDetail;

  const Grade({
    @required this.course,
    @required this.subject,
    @required this.semester,
    @required this.code,
    @required this.day,
    @required this.periods,
    @required this.teacher,
    @required this.year,
    @required this.people,
    @required this.s,
    @required this.a,
    @required this.b,
    @required this.c,
    @required this.d,
    @required this.page,
    @required this.hasDetail,
  });

  @override
  List<Object> get props => [
        course,
        subject,
        semester,
        code,
        day,
        periods,
        teacher,
        year,
        people,
        s,
        a,
        b,
        c,
        d,
        page,
        hasDetail,
      ];
}
