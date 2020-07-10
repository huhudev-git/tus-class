// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeTableModel _$_$_TimeTableModelFromJson(Map json) {
  return _$_TimeTableModel(
    curriculums: (json['curriculums'] as List)
        ?.map((e) => e == null
            ? null
            : CurriculumModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    semesters: (json['semesters'] as List)
        ?.map((e) => e == null
            ? null
            : SemesterModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    semester: json['semester'] as String,
    semesterValue: json['semesterValue'] as String,
    year: json['year'] as int,
    isCurrent: json['isCurrent'] as bool,
  );
}

Map<String, dynamic> _$_$_TimeTableModelToJson(_$_TimeTableModel instance) =>
    <String, dynamic>{
      'curriculums': instance.curriculums?.map((e) => e?.toJson())?.toList(),
      'semesters': instance.semesters?.map((e) => e?.toJson())?.toList(),
      'semester': instance.semester,
      'semesterValue': instance.semesterValue,
      'year': instance.year,
      'isCurrent': instance.isCurrent,
    };
