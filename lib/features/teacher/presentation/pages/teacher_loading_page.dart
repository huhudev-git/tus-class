import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TeacherLoadingPage extends StatelessWidget {
  const TeacherLoadingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        height: 440,
        width: 440 * 0.618,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
