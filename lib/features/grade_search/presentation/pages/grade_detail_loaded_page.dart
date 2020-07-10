import 'package:flutter/material.dart';

import '../../../../lang/localizations.dart';
import '../../domain/entities/grade_detail.dart';
import '../widgets/time_line_middle.dart';

class GradeDetailsLoadedPage extends StatefulWidget {
  final GradeDetail detail;

  const GradeDetailsLoadedPage({Key key, this.detail}) : super(key: key);

  @override
  _GradeDetailsLoadedPageState createState() => _GradeDetailsLoadedPageState();
}

class _GradeDetailsLoadedPageState extends State<GradeDetailsLoadedPage> {
  GradeDetail get detail => widget.detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          detail.course,
          style: Theme.of(context).appBarTheme.textTheme.headline6,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30.0),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_COURSE_JP'),
                  subtitle: detail.courseJp,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_COURSE_EN'),
                  subtitle: detail.courseEn,
                ),
                TimeLineTeacherMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_INSTRUCTOR'),
                  teachers: detail.teachers,
                  year: detail.year,
                  code: detail.code,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_YEAD_SEMESTER'),
                  subtitle: '${detail.year.toString()} ${detail.semester}',
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_CLASS_DAY_PERIOD'),
                  subtitle: detail.dayPeriod,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_DEPARTMENT'),
                  subtitle: "${detail.department} ${detail.subject}",
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_COURSE_CREDIT'),
                  subtitle: detail.credit.toString(),
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_GRADES'),
                  subtitle: detail.grade,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_CORUSE_CATEGORY'),
                  subtitle: detail.category,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_COMPULSORY_ELECTIVE'),
                  subtitle: detail.form,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_DESCRIPTIONS'),
                  subtitle: detail.descriptions,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_OBJECTIVES'),
                  subtitle: detail.objectives,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_GOALS'),
                  subtitle: detail.goals,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_NOTES'),
                  subtitle: detail.notes,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_ESSAY'),
                  subtitle: detail.essay,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_QUIZ_TYPE_TEST'),
                  subtitle: detail.quizTypeTest,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_DEBATE'),
                  subtitle: detail.debate,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_GROUP_WORK'),
                  subtitle: detail.groupWork,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_PRESENTAION'),
                  subtitle: detail.presentation,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_FLIPPD'),
                  subtitle: detail.flippedClassroom,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_OTHER'),
                  subtitle: detail.describe,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_PREPARAYION'),
                  subtitle: detail.preparation,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_PERFORMANCE_POLICY'),
                  subtitle: detail.gradingPolicy,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_PERFORMANCE_CRITERIA'),
                  subtitle: detail.gradingCriteria,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_TEXTBOOKS'),
                  subtitle: detail.textbooks,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_MATERIALBOOKS'),
                  subtitle: detail.materialbooks,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_PLAN'),
                  subtitle: detail.plan,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_TRAINING_COURSE'),
                  subtitle: detail.trainingCourse,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_EXPERIMENT'),
                  subtitle: detail.trainingCourse,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_SOFTWARE'),
                  subtitle: detail.software,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_REMARKS'),
                  subtitle: detail.remarks,
                ),
                TimeLineMiddle(
                  title: AppLocalizations.of(context).translate('SYLLABUS_TITLE_CODE'),
                  subtitle: detail.code,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
