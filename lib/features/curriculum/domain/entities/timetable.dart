import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tus_class/features/curriculum/domain/entities/curriculum.dart';
import 'package:tus_class/features/curriculum/domain/entities/semester.dart';

class TimeTable extends Equatable {
  final List<Curriculum> curriculums;
  final List<Semester> semesters;
  final String semester;
  final String semesterValue;
  final int year;
  final bool isCurrent;

  const TimeTable({
    @required this.curriculums,
    @required this.semesters,
    @required this.semester,
    @required this.semesterValue,
    @required this.year,
    @required this.isCurrent,
  });

  @override
  List<Object> get props => [curriculums, semester, semesterValue, year, semesters, isCurrent];
}
