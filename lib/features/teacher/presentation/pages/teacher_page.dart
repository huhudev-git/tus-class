import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../injection_container.dart';
import '../../../../lang/localizations.dart';
import '../teacher_bloc/teacher_bloc.dart';
import 'teacher_failed_page.dart';
import 'teacher_loaded_page.dart';
import 'teacher_loading_page.dart';

class TeacherPage extends StatelessWidget {
  final String teacherId;
  final String code;
  final int year;

  const TeacherPage({Key key, this.teacherId, this.code, this.year}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TeacherBloc>()..add(TeacherEvent.fetchTeacher(year: year, code: code, teacherId: teacherId)),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('SYLLABUS_TITLE_INSTRUCTOR'),
            style: Theme.of(context).appBarTheme.textTheme.headline6,
          ),
        ),
        body: Center(
          child: Neumorphic(
            style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5.0)),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              height: 440,
              width: 440 * 0.618,
              child: BlocBuilder<TeacherBloc, TeacherState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => TeacherLoadingPage(),
                    loading: (_) => TeacherLoadingPage(),
                    failed: (state) => TeacherFailedPage(
                      error: state.error,
                      teacherId: teacherId,
                      code: code,
                      year: year,
                    ),
                    loaded: (state) => TeacherLoadedPage(teacher: state.teacher),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
