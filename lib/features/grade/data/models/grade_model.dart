import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/grade.dart';

part 'grade_model.freezed.dart';
part 'grade_model.g.dart';

@freezed
abstract class GradeModel implements _$GradeModel {
  const factory GradeModel({
    @required String course,
    @required double credit,
    @required String evaluation,
    @required double g,
    @required double gp,
    @required int year,
    @required String category,
  }) = _GradeModel;
  const GradeModel._();

  Grade toDomain() {
    return Grade(
      course: course,
      credit: credit,
      evaluation: evaluation,
      g: g,
      gp: gp,
      year: year,
      category: category,
    );
  }

  factory GradeModel.fromJson(Map<String, dynamic> json) => _$GradeModelFromJson(json);
}
