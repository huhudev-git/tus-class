import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkTextSpan extends TextSpan {
  LinkTextSpan({String url, String text})
      : super(
          style: TextStyle(
            color: Colors.blueAccent,
            decoration: TextDecoration.underline,
          ),
          text: text ?? url,
          recognizer: TapGestureRecognizer()..onTap = () => launch(url, forceSafariVC: false),
        );
}

class OneLineLinkTextSpan extends TextSpan {
  OneLineLinkTextSpan({String url, String text})
      : super(
          style: TextStyle(
            color: Colors.blueAccent,
            decoration: TextDecoration.underline,
          ),
          text: text ?? url,
          recognizer: TapGestureRecognizer()..onTap = () => launch(url, forceSafariVC: false),
        );
}
