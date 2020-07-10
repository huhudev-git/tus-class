import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SemesterButtom extends StatelessWidget {
  final double depth;
  final double opacity;
  final String text;
  final VoidCallback onClick;

  const SemesterButtom({Key key, this.depth, this.opacity, this.text, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: onClick,
      padding: EdgeInsets.zero,
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
        depth: depth,
        intensity: 0.8,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        child: Opacity(
          opacity: opacity,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 19.0,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
