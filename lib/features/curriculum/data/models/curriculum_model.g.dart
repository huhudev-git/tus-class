// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curriculum_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurriculumModel _$_$_CurriculumModelFromJson(Map json) {
  return _$_CurriculumModel(
    code: json['code'] as String,
    course: json['course'] as String,
    teacher: json['teacher'] as String,
    semester: json['semester'] as String,
    year: json['year'] as int,
    day: json['day'] as int,
    period: json['period'] as int,
    hasDetail: json['hasDetail'] as bool,
  );
}

Map<String, dynamic> _$_$_CurriculumModelToJson(_$_CurriculumModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'course': instance.course,
      'teacher': instance.teacher,
      'semester': instance.semester,
      'year': instance.year,
      'day': instance.day,
      'period': instance.period,
      'hasDetail': instance.hasDetail,
    };
