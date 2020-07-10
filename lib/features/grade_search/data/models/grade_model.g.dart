// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GradeModel _$_$_GradeModelFromJson(Map json) {
  return _$_GradeModel(
    course: json['course'] as String,
    subject: json['subject'] as String,
    semester: json['semester'] as String,
    code: json['code'] as String,
    day: json['day'] as int,
    periods: (json['periods'] as List)?.map((e) => e as int)?.toList(),
    teacher: json['teacher'] as String,
    year: json['year'] as int,
    people: json['people'] as int,
    s: (json['s'] as num)?.toDouble(),
    a: (json['a'] as num)?.toDouble(),
    b: (json['b'] as num)?.toDouble(),
    c: (json['c'] as num)?.toDouble(),
    d: (json['d'] as num)?.toDouble(),
    page: json['page'] as int,
    hasDetail: json['hasDetail'] as bool,
  );
}

Map<String, dynamic> _$_$_GradeModelToJson(_$_GradeModel instance) =>
    <String, dynamic>{
      'course': instance.course,
      'subject': instance.subject,
      'semester': instance.semester,
      'code': instance.code,
      'day': instance.day,
      'periods': instance.periods,
      'teacher': instance.teacher,
      'year': instance.year,
      'people': instance.people,
      's': instance.s,
      'a': instance.a,
      'b': instance.b,
      'c': instance.c,
      'd': instance.d,
      'page': instance.page,
      'hasDetail': instance.hasDetail,
    };
