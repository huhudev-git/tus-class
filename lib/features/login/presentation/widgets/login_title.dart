import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "TUS CLASS",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            foreground: Paint()
              ..shader = LinearGradient(
                colors: <Color>[Colors.deepPurple, Colors.blue, Colors.blue[200], Colors.blueAccent, Colors.deepPurple],
              ).createShader(Rect.fromLTWH(30.0, 0.0, 200.0, 30.0)),
          ),
        ),
      ],
    );
  }
}
