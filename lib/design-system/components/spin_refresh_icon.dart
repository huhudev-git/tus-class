import 'dart:math' as math;
import 'package:flutter/material.dart';

class SpinRefreshIcon extends StatefulWidget {
  @override
  _SpinRefreshIconState createState() => _SpinRefreshIconState();
}

class _SpinRefreshIconState extends State<SpinRefreshIcon> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animetion;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animetion = Tween(begin: 0.0, end: 360.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _animetion.value * math.pi / 180.0,
      child: Icon(
        Icons.refresh,
      ),
    );
  }
}
