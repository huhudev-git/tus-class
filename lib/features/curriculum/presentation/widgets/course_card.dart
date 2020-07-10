import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../lang/localizations.dart';
import '../../domain/entities/curriculum.dart';
import '../../domain/entities/curriculum_detail.dart';
import '../../domain/entities/curriculum_setting.dart';
import '../curriculum_detail_bloc/curriculum_detail_bloc.dart';
import '../curriculum_setting_bloc/curriculum_setting_bloc.dart';
import 'attendance_rate_widget.dart';

class CourseCard extends StatefulWidget {
  final Curriculum curriculum;

  const CourseCard({Key key, this.curriculum}) : super(key: key);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> with TickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  Divider get divider => Divider(height: 0.0, color: Colors.black45);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    _animation = Tween(begin: -1.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _infoCardTap,
      child: Neumorphic(
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
          depth: (_animation.value > 0 ? _animation.value : -_animation.value) * 3,
        ),
        child: AspectRatio(
          aspectRatio: 1.62,
          child: GestureDetector(
            onTap: _infoCardTap,
            child: BlocBuilder<CurriculumSettingBloc, CurriculumSettingState>(
              builder: (context, settingState) => BlocBuilder<CurriculumDetailBloc, CurriculumDetailState>(
                builder: (context, detailState) {
                  final detail = detailState.maybeMap(
                    orElse: () => CurriculumDetail.empty(),
                    loaded: (detailState) => detailState.details.firstWhere(
                      (e) => e.code == widget.curriculum?.code,
                      orElse: () => CurriculumDetail.empty(),
                    ),
                  );

                  final setting = settingState.maybeMap(
                    orElse: () => null,
                    loaded: (settingState) => settingState.settings.firstWhere(
                      (e) {
                        if (widget.curriculum?.code != null) {
                          return e.code == widget.curriculum?.code;
                        } else {
                          return e.course == widget.curriculum?.course;
                        }
                      },
                      orElse: () => null,
                    ),
                  );

                  return AnimatedCrossFade(
                    firstChild: frontCard(detail, setting),
                    secondChild: _animation.value < 0 ? Container() : backCard(detail),
                    crossFadeState: _animation.value < 0 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                    duration: Duration(milliseconds: 500),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _card(Widget child) {
    return AspectRatio(
      aspectRatio: 1.62,
      child: child,
    );
  }

  Widget frontCard(CurriculumDetail detail, CurriculumSetting setting) {
    return _card(
      Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.curriculum?.course ?? '',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).primaryTextTheme.headline5,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.person),
                                SizedBox(width: 5.0),
                                Text(
                                  widget.curriculum?.teacher ?? '',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).primaryTextTheme.subtitle1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Neumorphic(
                        style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                          depth: (_animation.value > 0 ? _animation.value : -_animation.value) * 3,
                        ),
                        child: LimitedBox(
                          maxWidth: 200.0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(
                              (setting != null && setting.room.isNotEmpty) ? setting.room : '000',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).primaryTextTheme.headline4,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${AppLocalizations.of(context).translate('SYLLABUS_CARD_TITLE_DEPARTMENT')}: ${setting?.department ?? detail.department}・${setting?.subject ?? detail.subject}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).primaryTextTheme.subtitle2,
                      ),
                      Text(
                        '${AppLocalizations.of(context).translate('SYLLABUS_CARD_TITLE_CATEGORY')}: ${setting?.category ?? detail.category}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).primaryTextTheme.subtitle2,
                      ),
                      Text(
                        '${AppLocalizations.of(context).translate('SYLLABUS_CARD_TITLE_FORM')}: ${setting?.form ?? detail.form}',
                        style: Theme.of(context).primaryTextTheme.subtitle2,
                      ),
                      Text(
                        '${AppLocalizations.of(context).translate('SYLLABUS_CARD_TITLE_GRADE')}: ${setting?.grade ?? detail.grade}${detail.grade.isNotEmpty || (setting != null && setting.grade.isNotEmpty) ? '年' : ''}',
                        style: Theme.of(context).primaryTextTheme.subtitle2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 0.0,
            color: Colors.black54,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10.0)),
              ),
              child: AttendanceRateRow(curriculum: widget.curriculum, detail: detail),
            ),
          ),
        ],
      ),
    );
  }

  Widget backCard(CurriculumDetail detail) {
    return _card(
      ListView(
        children: <Widget>[
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_COURSE_JP')),
          divider,
          _content(detail.courseJp),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_COURSE_EN')),
          divider,
          _content(detail.courseEn),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_INSTRUCTOR')),
          divider,
          _content(detail.teachers.map((e) => e.name).join(', ')),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_DESCRIPTIONS')),
          divider,
          _content(detail.descriptions),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_OBJECTIVES')),
          divider,
          _content(detail.objectives),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_GOALS')),
          divider,
          _content(detail.goals),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_NOTES')),
          divider,
          _content(detail.notes),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_ESSAY')),
          divider,
          _content(detail.essay),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_QUIZ_TYPE_TEST')),
          divider,
          _content(detail.quizTypeTest),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_DEBATE')),
          divider,
          _content(detail.debate),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_GROUP_WORK')),
          divider,
          _content(detail.groupWork),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_PRESENTAION')),
          divider,
          _content(detail.presentation),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_FLIPPD')),
          divider,
          _content(detail.flippedClassroom),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_OTHER')),
          divider,
          _content(detail.describe),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_PREPARAYION')),
          divider,
          _content(detail.preparation),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_PERFORMANCE_POLICY')),
          divider,
          _content(detail.gradingPolicy),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_PERFORMANCE_CRITERIA')),
          divider,
          _content(detail.gradingCriteria),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_TEXTBOOKS')),
          divider,
          _content(detail.textbooks),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_MATERIALBOOKS')),
          divider,
          _content(detail.materialbooks),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_PLAN')),
          divider,
          _content(detail.plan),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_TRAINING_COURSE')),
          divider,
          _content(detail.trainingCourse),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_EXPERIMENT')),
          divider,
          _content(detail.experience),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_SOFTWARE')),
          divider,
          _content(detail.software),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_REMARKS')),
          divider,
          _content(detail.remarks),
          divider,
          _title(AppLocalizations.of(context).translate('SYLLABUS_TITLE_CODE')),
          divider,
          _content(detail.code),
        ],
      ),
    );
  }

  Widget _title(String title) {
    return ListTile(
      dense: true,
      enabled: false,
      title: Text(
        title,
        style: Theme.of(context).primaryTextTheme.headline6,
      ),
    );
  }

  Widget _content(String content) {
    return ListTile(
      enabled: false,
      title: Text(
        content,
        style: Theme.of(context).primaryTextTheme.subtitle2,
      ),
    );
  }

  void _infoCardTap() {
    switch (_controller.status) {
      case AnimationStatus.completed:
        _controller.reverse();
        break;
      case AnimationStatus.dismissed:
        _controller.forward();
        break;
      default:
    }
  }
}
