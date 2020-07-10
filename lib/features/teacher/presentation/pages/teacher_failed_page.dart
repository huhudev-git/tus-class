import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../core/errors/failures.dart';
import '../../../../design-system/components/components.dart';
import '../teacher_bloc/teacher_bloc.dart';

class TeacherFailedPage extends StatelessWidget {
  final String teacherId;
  final String code;
  final int year;
  final Failure error;

  const TeacherFailedPage({Key key, this.teacherId, this.code, this.year, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      height: 440,
      width: 440 * 0.618,
      child: FailureWidget(
        scale: 0.8,
        error: error,
        retry: () => BlocProvider.of<TeacherBloc>(context).add(
          TeacherEvent.fetchTeacher(year: year, code: code, teacherId: teacherId),
        ),
      ),
    );
  }
}
