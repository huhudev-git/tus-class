// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syllabus_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SyllabusFilterModel _$_$_SyllabusFilterModelFromJson(Map json) {
  return _$_SyllabusFilterModel(
    htmlNendo: (json['htmlNendo'] as List)?.map((e) => e as String)?.toList(),
    htmlJigen: (json['htmlJigen'] as Map)?.map(
      (k, e) => MapEntry(k as String, e as String),
    ),
    htmlYobi: (json['htmlYobi'] as Map)?.map(
      (k, e) => MapEntry(k as String, e as String),
    ),
    htmlGakunen: (json['htmlGakunen'] as Map)?.map(
      (k, e) => MapEntry(k as String, e as String),
    ),
    htmlGakkiNo: (json['htmlGakkiNo'] as Map)?.map(
      (k, e) => MapEntry(k as String, e as String),
    ),
    htmlKamokJugyo: (json['htmlKamokJugyo'] as Map)?.map(
      (k, e) => MapEntry(k as String, e as String),
    ),
    htmlGakka: (json['htmlGakka'] as Map)?.map(
      (k, e) => MapEntry(k as String, e as String),
    ),
  );
}

Map<String, dynamic> _$_$_SyllabusFilterModelToJson(
        _$_SyllabusFilterModel instance) =>
    <String, dynamic>{
      'htmlNendo': instance.htmlNendo,
      'htmlJigen': instance.htmlJigen,
      'htmlYobi': instance.htmlYobi,
      'htmlGakunen': instance.htmlGakunen,
      'htmlGakkiNo': instance.htmlGakkiNo,
      'htmlKamokJugyo': instance.htmlKamokJugyo,
      'htmlGakka': instance.htmlGakka,
    };
