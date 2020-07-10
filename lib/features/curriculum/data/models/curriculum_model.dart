import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/curriculum.dart';

part 'curriculum_model.freezed.dart';
part 'curriculum_model.g.dart';

@freezed
abstract class CurriculumModel implements _$CurriculumModel {
  const factory CurriculumModel({
    @nullable @required String code,
    @required String course,
    @required String teacher,
    @required String semester,
    @required int year,
    @required int day,
    @required int period,
    @required bool hasDetail,
  }) = _CurriculumModel;
  const CurriculumModel._();

  Curriculum toDomain() {
    return Curriculum(
      code: code,
      course: course,
      teacher: teacher,
      semester: semester,
      year: year,
      day: day,
      period: period,
      hasDetail: hasDetail,
    );
  }

  factory CurriculumModel.fromDomain(Curriculum curriculum) {
    return CurriculumModel(
      code: curriculum.code,
      course: curriculum.course,
      teacher: curriculum.teacher,
      semester: curriculum.semester,
      year: curriculum.year,
      day: curriculum.day,
      period: curriculum.period,
      hasDetail: curriculum.hasDetail,
    );
  }

  factory CurriculumModel.fromJson(Map<String, dynamic> json) => _$CurriculumModelFromJson(json);
}
