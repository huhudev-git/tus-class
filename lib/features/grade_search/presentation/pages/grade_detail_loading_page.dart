import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../widgets/time_line_middle.dart';

class GradeDetailLoadingPage extends StatelessWidget {
  const GradeDetailLoadingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Shimmer.fromColors(
        loop: -1,
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView(
            children: const <Widget>[
              SizedBox(height: 30.0),
              TimeLineLoadingMiddle(),
              TimeLineLoadingMiddle(),
              TimeLineLoadingMiddle(),
              TimeLineLoadingMiddle(),
              TimeLineLoadingMiddle(),
              TimeLineLoadingMiddle(),
              TimeLineLoadingMiddle(),
              TimeLineLoadingMiddle(),
              TimeLineLoadingMiddle(),
              TimeLineLoadingMiddle(),
            ],
          ),
        ),
      ),
    );
  }
}
