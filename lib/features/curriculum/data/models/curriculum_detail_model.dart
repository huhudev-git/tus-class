import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/curriculum_detail.dart';
import 'teacher_model.dart';

part 'curriculum_detail_model.freezed.dart';
part 'curriculum_detail_model.g.dart';

@freezed
abstract class CurriculumDetailModel implements _$CurriculumDetailModel {
  const factory CurriculumDetailModel({
    @required String code,
    @required String courseJp,
    @required String courseEn,
    @required String course,
    @required List<TeacherModel> teachers,
    @required String semester,
    @required String department,
    @required String languages,
    @required String subject,
    @required double credit,
    @required String grade,
    @required String category,
    @required String form,
    @required String descriptions,
    @required String objectives,
    @required String goals,
    @required String notes,
    @required String essay,
    @required String quizTypeTest,
    @required String debate,
    @required String groupWork,
    @required String presentation,
    @required String flippedClassroom,
    @required String describe,
    @required String preparation,
    @required String gradingPolicy,
    @required String gradingCriteria,
    @required String textbooks,
    @required String materialbooks,
    @required String plan,
    @required String trainingCourse,
    @required String experience,
    @required String software,
    @required String remarks,
    @required int year,
    @required String dayPeriod,
  }) = _CurriculumDetailModel;
  const CurriculumDetailModel._();

  CurriculumDetail toDomain() {
    return CurriculumDetail(
      code: code,
      courseJp: courseJp,
      courseEn: courseEn,
      course: course,
      teachers: teachers.map((e) => e.toDomain()).toList(),
      semester: semester,
      department: department,
      languages: languages,
      subject: subject,
      credit: credit,
      grade: grade,
      category: category,
      form: form,
      descriptions: descriptions,
      objectives: objectives,
      goals: goals,
      notes: notes,
      essay: essay,
      quizTypeTest: quizTypeTest,
      debate: debate,
      groupWork: groupWork,
      presentation: presentation,
      flippedClassroom: flippedClassroom,
      describe: describe,
      preparation: preparation,
      gradingPolicy: gradingPolicy,
      gradingCriteria: gradingCriteria,
      textbooks: textbooks,
      materialbooks: materialbooks,
      plan: plan,
      trainingCourse: trainingCourse,
      experience: experience,
      software: software,
      remarks: remarks,
      year: year,
      dayPeriod: dayPeriod,
    );
  }

  factory CurriculumDetailModel.fromDomain(CurriculumDetail curriculumDetail) {
    return CurriculumDetailModel(
      code: curriculumDetail.code,
      courseJp: curriculumDetail.courseJp,
      courseEn: curriculumDetail.courseEn,
      course: curriculumDetail.course,
      teachers: curriculumDetail.teachers.map((e) => TeacherModel.fromDomain(e)).toList(),
      semester: curriculumDetail.semester,
      department: curriculumDetail.department,
      languages: curriculumDetail.languages,
      subject: curriculumDetail.subject,
      credit: curriculumDetail.credit,
      grade: curriculumDetail.grade,
      category: curriculumDetail.category,
      form: curriculumDetail.form,
      descriptions: curriculumDetail.descriptions,
      objectives: curriculumDetail.objectives,
      goals: curriculumDetail.goals,
      notes: curriculumDetail.notes,
      essay: curriculumDetail.essay,
      quizTypeTest: curriculumDetail.quizTypeTest,
      debate: curriculumDetail.debate,
      groupWork: curriculumDetail.groupWork,
      presentation: curriculumDetail.presentation,
      flippedClassroom: curriculumDetail.flippedClassroom,
      describe: curriculumDetail.describe,
      preparation: curriculumDetail.preparation,
      gradingPolicy: curriculumDetail.gradingPolicy,
      gradingCriteria: curriculumDetail.gradingCriteria,
      textbooks: curriculumDetail.textbooks,
      materialbooks: curriculumDetail.materialbooks,
      plan: curriculumDetail.plan,
      trainingCourse: curriculumDetail.trainingCourse,
      experience: curriculumDetail.experience,
      software: curriculumDetail.software,
      remarks: curriculumDetail.remarks,
      year: curriculumDetail.year,
      dayPeriod: curriculumDetail.dayPeriod,
    );
  }

  factory CurriculumDetailModel.fromJson(Map<String, dynamic> json) => _$CurriculumDetailModelFromJson(json);
}
