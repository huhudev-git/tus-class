import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/fetch_grade_result.dart';
import 'grade_model.dart';

part 'fetch_grade_result_model.freezed.dart';
part 'fetch_grade_result_model.g.dart';

@freezed
abstract class FetchGradeResultModel implements _$FetchGradeResultModel {
  const factory FetchGradeResultModel({
    @required List<GradeModel> grades,
    @required bool isLastPage,
  }) = _FetchGradeResultModel;
  const FetchGradeResultModel._();

  FetchGradeResult toDomain() {
    return FetchGradeResult(
      grades: grades.map((e) => e.toDomain()).toList(),
      isLastPage: isLastPage,
    );
  }

  factory FetchGradeResultModel.fromJson(Map<String, dynamic> json) => _$FetchGradeResultModelFromJson(json);
}
