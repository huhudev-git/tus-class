// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GradeFilterModel _$_$_GradeFilterModelFromJson(Map json) {
  return _$_GradeFilterModel(
    htmlNendo: (json['htmlNendo'] as List)?.map((e) => e as String)?.toList(),
    htmlJigen: (json['htmlJigen'] as Map)?.map(
      (k, e) => MapEntry(k as String, e),
    ),
    htmlYobi: (json['htmlYobi'] as Map)?.map(
      (k, e) => MapEntry(k as String, e),
    ),
    htmlGakunen: (json['htmlGakunen'] as Map)?.map(
      (k, e) => MapEntry(k as String, e),
    ),
    htmlGakkiNo: (json['htmlGakkiNo'] as Map)?.map(
      (k, e) => MapEntry(k as String, e),
    ),
    htmlGakka: (json['htmlGakka'] as Map)?.map(
      (k, e) => MapEntry(k as String, e),
    ),
  );
}

Map<String, dynamic> _$_$_GradeFilterModelToJson(
        _$_GradeFilterModel instance) =>
    <String, dynamic>{
      'htmlNendo': instance.htmlNendo,
      'htmlJigen': instance.htmlJigen,
      'htmlYobi': instance.htmlYobi,
      'htmlGakunen': instance.htmlGakunen,
      'htmlGakkiNo': instance.htmlGakkiNo,
      'htmlGakka': instance.htmlGakka,
    };
