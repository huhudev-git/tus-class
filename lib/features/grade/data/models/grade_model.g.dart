// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GradeModel _$_$_GradeModelFromJson(Map json) {
  return _$_GradeModel(
    course: json['course'] as String,
    credit: (json['credit'] as num)?.toDouble(),
    evaluation: json['evaluation'] as String,
    g: (json['g'] as num)?.toDouble(),
    gp: (json['gp'] as num)?.toDouble(),
    year: json['year'] as int,
    category: json['category'] as String,
  );
}

Map<String, dynamic> _$_$_GradeModelToJson(_$_GradeModel instance) =>
    <String, dynamic>{
      'course': instance.course,
      'credit': instance.credit,
      'evaluation': instance.evaluation,
      'g': instance.g,
      'gp': instance.gp,
      'year': instance.year,
      'category': instance.category,
    };
