// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_syllabus_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchSyllabusResultModel _$_$_FetchSyllabusResultModelFromJson(Map json) {
  return _$_FetchSyllabusResultModel(
    syllabusList: (json['syllabusList'] as List)
        ?.map((e) => e == null
            ? null
            : SyllabusModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    isLastPage: json['isLastPage'] as bool,
  );
}

Map<String, dynamic> _$_$_FetchSyllabusResultModelToJson(
        _$_FetchSyllabusResultModel instance) =>
    <String, dynamic>{
      'syllabusList': instance.syllabusList?.map((e) => e?.toJson())?.toList(),
      'isLastPage': instance.isLastPage,
    };
