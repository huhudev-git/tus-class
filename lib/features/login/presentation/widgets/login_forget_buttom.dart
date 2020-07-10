import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../lang/localizations.dart';

class ForgetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      padding: EdgeInsets.all(0),
      onPressed: () => launch('http://jwww.ed.tus.ac.jp/guide/window/apply.htm', forceSafariVC: false),
      child: Text(
        AppLocalizations.of(context).translate('MESSAGE_FORGET_PASSWORD_BUTTOM'),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.black38,
        ),
      ),
    );
  }
}
