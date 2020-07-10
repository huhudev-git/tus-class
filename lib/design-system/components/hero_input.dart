import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HeroInput extends StatelessWidget {
  final String hintText;
  final String tag;
  final VoidCallback onTap;
  final ValueChanged<String> onSubmitted;

  const HeroInput({Key key, this.hintText, this.tag, this.onTap, this.onSubmitted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: onSubmitted != null ? null : onTap,
          child: Container(
            height: 40.0,
            child: Neumorphic(
              style: NeumorphicStyle(depth: -1.5),
              child: TextField(
                onTap: onSubmitted != null ? onTap : null,
                enabled: onSubmitted != null,
                autofocus: onSubmitted != null,
                onSubmitted: onSubmitted,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black45),
                decoration: InputDecoration(
                  hintText: hintText,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
