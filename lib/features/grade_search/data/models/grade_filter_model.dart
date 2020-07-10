import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/grade_filter.dart';

part 'grade_filter_model.freezed.dart';
part 'grade_filter_model.g.dart';

@freezed
abstract class GradeFilterModel implements _$GradeFilterModel {
  const factory GradeFilterModel({
    @required List<String> htmlNendo,
    @required Map<String, dynamic> htmlJigen,
    @required Map<String, dynamic> htmlYobi,
    @required Map<String, dynamic> htmlGakunen,
    @required Map<String, dynamic> htmlGakkiNo,
    @required Map<String, dynamic> htmlGakka,
  }) = _GradeFilterModel;
  const GradeFilterModel._();

  GradeFilter toDomain() {
    return GradeFilter(
      htmlNendo: htmlNendo,
      htmlJigen: htmlJigen,
      htmlYobi: htmlYobi,
      htmlGakunen: htmlGakunen,
      htmlGakkiNo: htmlGakkiNo,
      htmlGakka: htmlGakka,
    );
  }

  factory GradeFilterModel.fromJson(Map<String, dynamic> json) => _$GradeFilterModelFromJson(json);
}
