import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../../../../lang/localizations.dart';
import '../about_bloc/about_bloc.dart';
import '../widgets/setting_list_tile.dart';
import 'assert_license_page.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AboutBloc>()..add(AboutEvent.init()),
      child: BlocBuilder<AboutBloc, AboutState>(
        buildWhen: (previous, current) {
          if (current.error != null) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(current.error.getMessage(context)),
                      const Icon(Icons.error),
                    ],
                  ),
                  backgroundColor: const Color(0xFFd9534f),
                ),
              );
            return false;
          }
          return true;
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                AppLocalizations.of(context).translate('TITLE_ABOUT'),
                style: Theme.of(context).appBarTheme.textTheme.headline6,
              ),
            ),
            body: ListView(
              children: <Widget>[
                SizedBox(height: 30.0),
                NeumorphicIcon(
                  Icons.school,
                  size: 80.0,
                  style: NeumorphicStyle(
                    color: Theme.of(context).accentColor,
                    depth: 1.0,
                  ),
                ),
                Center(
                  child: NeumorphicText(
                    state.about.appName,
                    style: NeumorphicStyle(
                      color: Theme.of(context).accentColor,
                      depth: 1.0,
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context).translate('MESSAGE_APP_UNDER_TESTING_DESC'),
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
                SettingListTile(
                  icon: Icons.apps,
                  color: Colors.green,
                  text: AppLocalizations.of(context).translate('LABEL_VERSION'),
                  trailing: Text(
                    'v${state.about.version} (${state.about.buildNumber})',
                    textScaleFactor: 1.2,
                  ),
                ),
                Divider(height: 0.0),
                SettingListTile(
                  icon: Icons.account_circle,
                  color: Colors.blue,
                  text: AppLocalizations.of(context).translate('LABEL_AUTHOR'),
                  trailing: Text(
                    state.about.author,
                    textScaleFactor: 1.2,
                  ),
                ),
                Divider(height: 0.0),
                SettingListTile(
                  icon: Icons.email,
                  color: Colors.red,
                  text: AppLocalizations.of(context).translate('LABEL_EMAIL'),
                  trailing: RichText(
                    text: LinkTextSpan(
                      text: state.about.authorEmail,
                      // TODO: v0.0.0+0 not change
                      url: Uri.encodeFull('mailto:${state.about.authorEmail}?subject=[TUS APP] Bug Report&body=\nI am running ${state.about.appName}(v${state.about.version}+${state.about.buildNumber}) on ${state.about.platform}'),
                    ),
                  ),
                ),
                Divider(height: 0.0),
                SettingListTile(
                  icon: Icons.bug_report,
                  color: Colors.purple,
                  text: AppLocalizations.of(context).translate('LABEL_REPORT_BUGS'),
                  trailing: RichText(
                    text: LinkTextSpan(
                      text: AppLocalizations.of(context).translate('LABEL_ISSUES'),
                      url: Uri.encodeFull(state.about.issuesUrl),
                    ),
                  ),
                ),
                Divider(height: 0.0),
                SettingListTile(
                  icon: Icons.insert_link,
                  color: Colors.amber,
                  text: AppLocalizations.of(context).translate('LABEL_LICENSE'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return LicensePage(
                        applicationName: state.about.appName,
                        applicationVersion: 'v${state.about.version}',
                      );
                    }));
                  },
                ),
                Divider(height: 0.0),
                SettingListTile(
                  icon: Icons.insert_link,
                  color: Colors.amber,
                  text: AppLocalizations.of(context).translate('LABEL_OTHER_LICENSE'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return AssertLicensePage();
                    }));
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
