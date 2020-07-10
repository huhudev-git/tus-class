import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../lang/localizations.dart';
import '../i18n_bloc/i18n_bloc.dart';

class LanguagePage extends StatefulWidget {
  final I18nBloc bloc;
  const LanguagePage({Key key, this.bloc}) : super(key: key);

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context).translate('LABEL_SWITCH_LANGUAGE'),
          style: Theme.of(context).appBarTheme.textTheme.headline6,
        ),
      ),
      body: ListView(
        primary: false,
        children: <Widget>[
          Divider(height: 0.0),
          ListTile(
            onTap: () => widget.bloc.add(I18nEvent.switchLanguage(
              languageCode: 'JP',
              scriptCode: 'ja',
            )),
            leading: Neumorphic(
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: Icon(
                Icons.language,
                color: Theme.of(context).primaryIconTheme.color,
                size: 30.0,
              ),
            ),
            title: Text(
              '日本語',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
          ),
          Divider(height: 0.0),
          ListTile(
            onTap: () => widget.bloc.add(I18nEvent.switchLanguage(
              languageCode: 'zh',
              scriptCode: 'Hans',
              countryCode: 'CN',
            )),
            leading: Neumorphic(
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: Icon(
                Icons.language,
                color: Theme.of(context).primaryIconTheme.color,
                size: 30.0,
              ),
            ),
            title: Text(
              '中文',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
          ),
          Divider(height: 0.0),
          ListTile(
            onTap: () => widget.bloc.add(I18nEvent.switchLanguage(
              languageCode: 'en',
              countryCode: 'US',
            )),
            leading: Neumorphic(
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: Icon(
                Icons.language,
                color: Theme.of(context).primaryIconTheme.color,
                size: 30.0,
              ),
            ),
            title: Text(
              'English',
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
          ),
          Divider(height: 0.0),
        ],
      ),
    );
  }
}
