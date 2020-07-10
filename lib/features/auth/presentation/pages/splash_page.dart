import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'TUS',
                style: Theme.of(context).primaryTextTheme.headline2.copyWith(
                  shadows: <Shadow>[
                    BoxShadow(
                      offset: Offset(2.0, 2.0),
                      color: Theme.of(context).accentColor,
                      blurRadius: 4.0,
                    )
                  ],
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: <Color>[
                        Theme.of(context).accentColor,
                        Theme.of(context).accentColor.withOpacity(0.8),
                      ],
                    ).createShader(
                      Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                    ),
                ),
              ),
              Text(
                ' ',
                style: Theme.of(context).primaryTextTheme.headline2,
              ),
              Text(
                'CLASS',
                style: Theme.of(context).primaryTextTheme.headline2,
              )
            ],
          ),
        ],
      ),
    );
  }
}
