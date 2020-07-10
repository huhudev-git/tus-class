import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/grade.dart';

part 'grade_model.freezed.dart';
part 'grade_model.g.dart';

@freezed
abstract class GradeModel implements _$GradeModel {
  const factory GradeModel({
    @required String course,
    @required String subject,
    @required String semester,
    @required String code,
    @nullable @required int day,
    @required List<int> periods,
    @required String teacher,
    @required int year,
    @required int people,
    @required double s,
    @required double a,
    @required double b,
    @required double c,
    @required double d,
    @required int page,
    @required bool hasDetail,
  }) = _GradeModel;
  const GradeModel._();

  Grade toDomain() {
    return Grade(
      course: course,
      subject: subject,
      semester: semester,
      code: code,
      day: day,
      periods: periods,
      teacher: teacher,
      year: year,
      people: people,
      s: s,
      a: a,
      b: b,
      c: c,
      d: d,
      page: page,
      hasDetail: hasDetail,
    );
  }

  factory GradeModel.fromJson(Map<String, dynamic> json) => _$GradeModelFromJson(json);
}
