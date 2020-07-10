import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../lang/localizations.dart';

class AssertLicensePage extends StatelessWidget {
  const AssertLicensePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context).translate('LABEL_LICENSE'),
          style: Theme.of(context).appBarTheme.textTheme.headline6,
        ),
      ),
      body: ListView(
        primary: false,
        children: <Widget>[
          ListTile(
            enabled: false,
            title: Text(
              'Icons',
              style: Theme.of(context).primaryTextTheme.headline5.copyWith(color: Colors.black45),
            ),
          ),
          Divider(height: 0.0),
          ListTile(
            enabled: false,
            leading: Neumorphic(
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: Icon(
                Icons.insert_emoticon,
                color: Theme.of(context).primaryIconTheme.color,
                size: 40.0,
              ),
            ),
            title: Text(
              'User Experience Icons',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
            subtitle: Text('Freepik from www.flaticon.com'),
            trailing: Text('CC-BY-3.0'),
          ),
          Divider(height: 0.0),
          ListTile(
            enabled: false,
            leading: Neumorphic(
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: Icon(
                Icons.insert_emoticon,
                color: Theme.of(context).primaryIconTheme.color,
                size: 40.0,
              ),
            ),
            title: Text(
              'Files Icons',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
            subtitle: Text('Miroliubov from www.flaticon.com'),
            trailing: Text('CC-BY-3.0'),
          ),
          Divider(height: 0.0),
          ListTile(
            enabled: false,
            leading: Neumorphic(
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: Icon(
                Icons.insert_emoticon,
                color: Theme.of(context).primaryIconTheme.color,
                size: 40.0,
              ),
            ),
            title: Text(
              'Space Icons',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
            subtitle: Text('Smashicons from www.flaticon.com'),
            trailing: Text('CC-BY-3.0'),
          ),
        ],
      ),
    );
  }
}
