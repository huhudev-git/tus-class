import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/grade_detail.dart';
import 'teacher_model.dart';

part 'grade_detail_model.freezed.dart';
part 'grade_detail_model.g.dart';

@freezed
abstract class GradeDetailModel implements _$GradeDetailModel {
  const factory GradeDetailModel({
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
  }) = _GradeDetailModel;
  const GradeDetailModel._();

  GradeDetail toDomain() {
    return GradeDetail(
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

  factory GradeDetailModel.fromJson(Map<String, dynamic> json) => _$GradeDetailModelFromJson(json);
}
