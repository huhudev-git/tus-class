import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/timetable.dart';
import 'curriculum_model.dart';
import 'semester_model.dart';

part 'timetable_model.freezed.dart';
part 'timetable_model.g.dart';

@freezed
abstract class TimeTableModel implements _$TimeTableModel {
  const factory TimeTableModel({
    @required List<CurriculumModel> curriculums,
    @required List<SemesterModel> semesters,
    @required String semester,
    @required String semesterValue,
    @required int year,
    @required bool isCurrent,
  }) = _TimeTableModel;
  const TimeTableModel._();

  TimeTable toDomain() {
    return TimeTable(
      curriculums: curriculums.map((e) => e.toDomain()).toList(),
      semester: semester,
      semesterValue: semesterValue,
      year: year,
      semesters: semesters.map((e) => e.toDomain()).toList(),
      isCurrent: isCurrent,
    );
  }

  factory TimeTableModel.fromDomain(TimeTable timeTable) {
    return TimeTableModel(
      curriculums: timeTable.curriculums.map((e) => CurriculumModel.fromDomain(e)).toList(),
      semester: timeTable.semester,
      semesterValue: timeTable.semesterValue,
      year: timeTable.year,
      semesters: timeTable.semesters.map((e) => SemesterModel.fromDomain(e)).toList(),
      isCurrent: timeTable.isCurrent,
    );
  }

  factory TimeTableModel.fromJson(Map<String, dynamic> json) => _$TimeTableModelFromJson(json);
}
