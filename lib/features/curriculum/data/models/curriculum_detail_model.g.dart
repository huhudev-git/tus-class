// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curriculum_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurriculumDetailModel _$_$_CurriculumDetailModelFromJson(Map json) {
  return _$_CurriculumDetailModel(
    code: json['code'] as String,
    courseJp: json['courseJp'] as String,
    courseEn: json['courseEn'] as String,
    course: json['course'] as String,
    teachers: (json['teachers'] as List)
        ?.map((e) => e == null
            ? null
            : TeacherModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    semester: json['semester'] as String,
    department: json['department'] as String,
    languages: json['languages'] as String,
    subject: json['subject'] as String,
    credit: (json['credit'] as num)?.toDouble(),
    grade: json['grade'] as String,
    category: json['category'] as String,
    form: json['form'] as String,
    descriptions: json['descriptions'] as String,
    objectives: json['objectives'] as String,
    goals: json['goals'] as String,
    notes: json['notes'] as String,
    essay: json['essay'] as String,
    quizTypeTest: json['quizTypeTest'] as String,
    debate: json['debate'] as String,
    groupWork: json['groupWork'] as String,
    presentation: json['presentation'] as String,
    flippedClassroom: json['flippedClassroom'] as String,
    describe: json['describe'] as String,
    preparation: json['preparation'] as String,
    gradingPolicy: json['gradingPolicy'] as String,
    gradingCriteria: json['gradingCriteria'] as String,
    textbooks: json['textbooks'] as String,
    materialbooks: json['materialbooks'] as String,
    plan: json['plan'] as String,
    trainingCourse: json['trainingCourse'] as String,
    experience: json['experience'] as String,
    software: json['software'] as String,
    remarks: json['remarks'] as String,
    year: json['year'] as int,
    dayPeriod: json['dayPeriod'] as String,
  );
}

Map<String, dynamic> _$_$_CurriculumDetailModelToJson(
        _$_CurriculumDetailModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'courseJp': instance.courseJp,
      'courseEn': instance.courseEn,
      'course': instance.course,
      'teachers': instance.teachers?.map((e) => e?.toJson())?.toList(),
      'semester': instance.semester,
      'department': instance.department,
      'languages': instance.languages,
      'subject': instance.subject,
      'credit': instance.credit,
      'grade': instance.grade,
      'category': instance.category,
      'form': instance.form,
      'descriptions': instance.descriptions,
      'objectives': instance.objectives,
      'goals': instance.goals,
      'notes': instance.notes,
      'essay': instance.essay,
      'quizTypeTest': instance.quizTypeTest,
      'debate': instance.debate,
      'groupWork': instance.groupWork,
      'presentation': instance.presentation,
      'flippedClassroom': instance.flippedClassroom,
      'describe': instance.describe,
      'preparation': instance.preparation,
      'gradingPolicy': instance.gradingPolicy,
      'gradingCriteria': instance.gradingCriteria,
      'textbooks': instance.textbooks,
      'materialbooks': instance.materialbooks,
      'plan': instance.plan,
      'trainingCourse': instance.trainingCourse,
      'experience': instance.experience,
      'software': instance.software,
      'remarks': instance.remarks,
      'year': instance.year,
      'dayPeriod': instance.dayPeriod,
    };
