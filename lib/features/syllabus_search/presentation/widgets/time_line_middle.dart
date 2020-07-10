import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../teacher/presentation/pages/teacher_page.dart';
import '../../domain/entities/teacher.dart';

class TimeLineMiddle extends StatelessWidget {
  final String title;
  final String subtitle;

  const TimeLineMiddle({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                  depth: 1.5,
                ),
                child: Icon(Icons.radio_button_unchecked),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(),
                  width: 2.0,
                  color: Colors.black12,
                ),
              )
            ],
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 2.0),
                  Text(
                    title,
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).primaryTextTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimeLineTeacherMiddle extends StatelessWidget {
  final String title;
  final List<Teacher> teachers;
  final int year;
  final String code;

  const TimeLineTeacherMiddle({
    Key key,
    this.title,
    this.teachers,
    this.year,
    this.code,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                  depth: 1.5,
                ),
                child: Icon(Icons.radio_button_unchecked),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(),
                  width: 2.0,
                  color: Colors.black12,
                ),
              )
            ],
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 2.0),
                  Text(
                    title,
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                  SizedBox(height: 5.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _teachers(teachers, context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _teachers(List<Teacher> teachers, BuildContext context) {
    final List<Widget> widgets = [];

    for (final teacher in teachers) {
      widgets.add(
        NeumorphicButton(
          padding: EdgeInsets.all(3.0),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => TeacherPage(teacherId: teacher.code, code: code, year: year)),
          ),
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(2.0)),
            depth: 1.5,
          ),
          child: Text(
            teacher.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
        ),
      );
      widgets.add(SizedBox(height: 7.0));
    }
    if (widgets.length == 2) {
      widgets.removeLast();
    }
    return widgets;
  }
}

class TimeLineLoadingMiddle extends StatelessWidget {
  final String title;

  const TimeLineLoadingMiddle({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Icon(Icons.radio_button_unchecked),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(),
                  width: 2.0,
                  color: Colors.black12,
                ),
              )
            ],
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 2.0),
                  Container(
                    width: 70.0,
                    height: 14.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: 170.0,
                    height: 14.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
