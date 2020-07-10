// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_grade_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchGradeResultModel _$_$_FetchGradeResultModelFromJson(Map json) {
  return _$_FetchGradeResultModel(
    grades: (json['grades'] as List)
        ?.map((e) => e == null
            ? null
            : GradeModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    isLastPage: json['isLastPage'] as bool,
  );
}

Map<String, dynamic> _$_$_FetchGradeResultModelToJson(
        _$_FetchGradeResultModel instance) =>
    <String, dynamic>{
      'grades': instance.grades?.map((e) => e?.toJson())?.toList(),
      'isLastPage': instance.isLastPage,
    };
