// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syllabus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SyllabusModel _$_$_SyllabusModelFromJson(Map json) {
  return _$_SyllabusModel(
    code: json['code'] as String,
    course: json['course'] as String,
    teacher: json['teacher'] as String,
    semester: json['semester'] as String,
    subject: json['subject'] as String,
    type: json['type'] as String,
    page: json['page'] as int,
    year: json['year'] as int,
    day: json['day'] as int,
    periods: (json['periods'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$_$_SyllabusModelToJson(_$_SyllabusModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'course': instance.course,
      'teacher': instance.teacher,
      'semester': instance.semester,
      'subject': instance.subject,
      'type': instance.type,
      'page': instance.page,
      'year': instance.year,
      'day': instance.day,
      'periods': instance.periods,
    };
