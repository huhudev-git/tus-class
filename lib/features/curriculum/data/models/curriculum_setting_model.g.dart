// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curriculum_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurriculumSettingModel _$_$_CurriculumSettingModelFromJson(Map json) {
  return _$_CurriculumSettingModel(
    course: json['course'] as String,
    code: json['code'] as String,
    form: json['form'] as String,
    room: json['room'] as String,
    department: json['department'] as String,
    category: json['category'] as String,
    subject: json['subject'] as String,
    grade: json['grade'] as String,
  );
}

Map<String, dynamic> _$_$_CurriculumSettingModelToJson(
        _$_CurriculumSettingModel instance) =>
    <String, dynamic>{
      'course': instance.course,
      'code': instance.code,
      'form': instance.form,
      'room': instance.room,
      'department': instance.department,
      'category': instance.category,
      'subject': instance.subject,
      'grade': instance.grade,
    };
