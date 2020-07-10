import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/curriculum_setting.dart';

part 'curriculum_setting_model.freezed.dart';
part 'curriculum_setting_model.g.dart';

@freezed
abstract class CurriculumSettingModel implements _$CurriculumSettingModel {
  const factory CurriculumSettingModel({
    @required String course,
    @required String code,
    @required String form,
    @required String room,
    @required String department,
    @required String category,
    @required String subject,
    @required String grade,
  }) = _CurriculumSettingModel;
  const CurriculumSettingModel._();

  CurriculumSetting toDomain() {
    return CurriculumSetting(
      course: course,
      code: code,
      form: form,
      room: room,
      department: department,
      category: category,
      subject: subject,
      grade: grade,
    );
  }

  factory CurriculumSettingModel.fromDomain(CurriculumSetting setting) {
    return CurriculumSettingModel(
      course: setting.course,
      code: setting.code,
      form: setting.form,
      room: setting.room,
      department: setting.department,
      category: setting.category,
      subject: setting.subject,
      grade: setting.grade,
    );
  }

  factory CurriculumSettingModel.fromJson(Map<String, dynamic> json) => _$CurriculumSettingModelFromJson(json);
}
