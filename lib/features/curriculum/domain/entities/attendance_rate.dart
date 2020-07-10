import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AttendanceRate extends Equatable {
  final String code;
  final String course;
  final int rate;

  const AttendanceRate({
    @required this.code,
    @required this.course,
    @required this.rate,
  });

  factory AttendanceRate.empty() => AttendanceRate(
        code: '',
        course: '',
        rate: -1,
      );

  @override
  List<Object> get props => [code, course, rate];
}
