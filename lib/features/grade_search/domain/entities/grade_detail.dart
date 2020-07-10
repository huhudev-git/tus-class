import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'teacher.dart';

class GradeDetail extends Equatable {
  final String code;
  final String courseJp;
  final String courseEn;
  final String course;
  final List<Teacher> teachers;
  final String semester;
  final String department;
  final String languages;
  final String subject;
  final double credit;
  final String grade;
  final String category;
  final String form;
  final String descriptions;
  final String objectives;
  final String goals;
  final String notes;

  final String essay;
  final String quizTypeTest;
  final String debate;
  final String groupWork;
  final String presentation;
  final String flippedClassroom;
  final String describe;

  final String preparation;
  final String gradingPolicy;
  final String gradingCriteria;
  final String textbooks;
  final String materialbooks;
  final String plan;
  final String trainingCourse;
  final String experience;
  final String software;
  final String remarks;
  final int year;
  final String dayPeriod;

  const GradeDetail({
    @required this.code,
    @required this.courseJp,
    @required this.courseEn,
    @required this.course,
    @required this.teachers,
    @required this.semester,
    @required this.department,
    @required this.languages,
    @required this.subject,
    @required this.credit,
    @required this.grade,
    @required this.category,
    @required this.form,
    @required this.descriptions,
    @required this.objectives,
    @required this.goals,
    @required this.notes,
    @required this.essay,
    @required this.quizTypeTest,
    @required this.debate,
    @required this.groupWork,
    @required this.presentation,
    @required this.flippedClassroom,
    @required this.describe,
    @required this.preparation,
    @required this.gradingPolicy,
    @required this.gradingCriteria,
    @required this.textbooks,
    @required this.materialbooks,
    @required this.plan,
    @required this.trainingCourse,
    @required this.experience,
    @required this.software,
    @required this.remarks,
    @required this.year,
    @required this.dayPeriod,
  });

  @override
  List<Object> get props => [
        code,
        courseJp,
        courseEn,
        course,
        teachers,
        semester,
        department,
        languages,
        subject,
        credit,
        grade,
        category,
        form,
        descriptions,
        objectives,
        goals,
        notes,
        essay,
        quizTypeTest,
        debate,
        groupWork,
        presentation,
        flippedClassroom,
        preparation,
        gradingPolicy,
        gradingCriteria,
        textbooks,
        materialbooks,
        plan,
        trainingCourse,
        experience,
        software,
        remarks,
        year,
        dayPeriod,
      ];
}
