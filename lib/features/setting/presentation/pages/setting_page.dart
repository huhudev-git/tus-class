import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:store_redirect/store_redirect.dart';

import '../../../../injection_container.dart';
import '../../../../lang/localizations.dart';
import '../i18n_bloc/i18n_bloc.dart';
import '../version_bloc/version_bloc.dart' as vb;
import '../setting_bloc/setting_bloc.dart' as sb;
import '../widgets/setting_list_tile.dart';
import 'about_page.dart';
import 'language_page.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<sb.SettingBloc>()..add(const sb.SettingEvent.init()),
        ),
        BlocProvider(
          create: (context) => getIt<vb.VersionBloc>()..add(const vb.VersionEvent.check()),
        ),
      ],
      child: BlocBuilder<sb.SettingBloc, sb.SettingState>(
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
          return _SettingPage();
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _SettingPage extends StatefulWidget {
  @override
  __SettingPageState createState() => __SettingPageState();
}

class __SettingPageState extends State<_SettingPage> {
  sb.SettingState get state => BlocProvider.of<sb.SettingBloc>(context).state;
  String _username, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context).translate('TITLE_SETTING'),
          style: Theme.of(context).appBarTheme.textTheme.headline6,
        ),
      ),
      body: ListView(
        children: <Widget>[
          _title(AppLocalizations.of(context).translate('LABEL_ACCOUNT')),
          Divider(height: 0.0),
          _resetAutoLoginListTile(BlocProvider.of<sb.SettingBloc>(context)),
          Divider(height: 0.0),
          _enableAutoLoginListTile(),
          Divider(height: 0.0),
          _title(AppLocalizations.of(context).translate('LABEL_CACHE_FILE')),
          Divider(height: 0.0),
          _deleteCacheFileListTile(BlocProvider.of<sb.SettingBloc>(context)),
          Divider(height: 0.0),
          _title(AppLocalizations.of(context).translate('LABEL_LANGUAGE')),
          Divider(height: 0.0),
          SettingListTile(
            icon: Icons.language,
            color: Colors.purple,
            text: AppLocalizations.of(context).translate('LABEL_LANGUAGE'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return LanguagePage(bloc: context.bloc<I18nBloc>());
                  },
                ),
              );
            },
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(height: 0.0),
          _title(AppLocalizations.of(context).translate('LABEL_ABOUT')),
          Divider(height: 0.0),
          BlocBuilder<vb.VersionBloc, vb.VersionState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => SettingListTile(
                  icon: Icons.update,
                  color: Colors.green,
                  text: AppLocalizations.of(context).translate('LABEL_UPDATE'),
                  onTap: () {},
                  trailing: SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.0,
                    ),
                  ),
                ),
                failed: (state) => SettingListTile(
                  icon: Icons.update,
                  color: Colors.green,
                  text: AppLocalizations.of(context).translate('LABEL_UPDATE'),
                  onTap: () {
                    BlocProvider.of<vb.VersionBloc>(context).add(const vb.VersionEvent.check());
                  },
                  trailing: Icon(
                    Icons.clear,
                    color: Colors.red,
                  ),
                ),
                loaded: (state) => SettingListTile(
                  icon: Icons.update,
                  color: state.hasUpdate ? Colors.orange : Colors.green,
                  text: AppLocalizations.of(context).translate('LABEL_UPDATE'),
                  onTap: () {
                    if (state.hasUpdate) {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                            title: Text(AppLocalizations.of(context).translate('MESSAGE_HAS_UPDATE')),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text(
                                    AppLocalizations.of(context).translate('MESSAGE_HAS_UPDATE_TEXT'),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              NeumorphicButton(
                                onPressed: () {
                                  StoreRedirect.redirect(androidAppId: "com.huhu.tusclass", iOSAppId: "1513692491");
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  AppLocalizations.of(context).translate('LABEL_YES'),
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                              NeumorphicButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  AppLocalizations.of(context).translate('LABEL_NO'),
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      Scaffold.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(AppLocalizations.of(context).translate('MESSAGE_NO_UPDATE')),
                                Icon(Icons.check),
                              ],
                            ),
                            backgroundColor: Colors.green,
                          ),
                        );
                    }
                  },
                  trailing: state.hasUpdate
                      ? Icon(
                          Icons.error,
                          color: Colors.orange,
                        )
                      : Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                ),
              );
            },
          ),
          Divider(height: 0.0),
          SettingListTile(
            icon: Icons.info_outline,
            color: Colors.blueAccent,
            text: AppLocalizations.of(context).translate('LABEL_ABOUT'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return AboutPage();
                  },
                ),
              );
            },
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(height: 0.0),
        ],
      ),
    );
  }

  Widget _resetAutoLoginListTile(bloc) {
    if (state.setting.hasToken) {
      return SettingListTile(
        icon: Icons.restore_from_trash,
        color: Colors.deepOrange,
        text: AppLocalizations.of(context).translate('MESSAGE_RESET_AUTO_LOGIN'),
        onTap: () {
          return showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                backgroundColor: Theme.of(context).primaryColor,
                title: Text(AppLocalizations.of(context).translate('MESSAGE_RESET_AUTO_LOGIN')),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).translate('MESSAGE_RESET_AUTO_LOGIN_DESC'),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  NeumorphicButton(
                    onPressed: () {
                      bloc.add(sb.SettingEvent.deleteAuthToken());
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      AppLocalizations.of(context).translate('LABEL_YES'),
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  NeumorphicButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      AppLocalizations.of(context).translate('LABEL_NO'),
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              );
            },
          );
        },
      );
    } else {
      return SettingListTile(
        icon: Icons.create,
        color: Colors.green,
        text: AppLocalizations.of(context).translate('MESSAGE_SET_AUTO_LOGIN'),
        onTap: () {
          return showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                title: Text(AppLocalizations.of(context).translate('MESSAGE_SET_AUTO_LOGIN')),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Form(
                        key: _formKey,
                        child: NeumorphicTheme(
                          theme: NeumorphicThemeData(
                            baseColor: Color(0xFFEFEEEE),
                            accentColor: Colors.cyan,
                            depth: -1.5,
                            intensity: 1.0,
                          ),
                          child: Column(
                            children: <Widget>[
                              Neumorphic(
                                padding: EdgeInsets.zero,
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    primaryColor: Theme.of(context).accentColor,
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    autofocus: true,
                                    onSaved: (val) => _username = val,
                                    validator: (val) => val.isEmpty ? AppLocalizations.of(context).translate('INVAILD_USERNAME') : null,
                                    decoration: InputDecoration(
                                      hintText: AppLocalizations.of(context).translate('LABEL_USERNAME'),
                                      hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Neumorphic(
                                padding: EdgeInsets.zero,
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                    primaryColor: Theme.of(context).accentColor,
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    onSaved: (val) => _password = val,
                                    validator: (val) => val.isEmpty ? AppLocalizations.of(context).translate('INVAILD_PASSWORD') : null,
                                    decoration: InputDecoration(
                                      hintText: AppLocalizations.of(context).translate('LABEL_PASSWORD'),
                                      hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                                      prefixIcon: Icon(Icons.lock_outline),
                                    ),
                                    obscureText: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  NeumorphicButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        bloc.add(
                          sb.SettingEvent.setAuthToken(
                            username: _username,
                            password: _password,
                          ),
                        );
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text(
                      AppLocalizations.of(context).translate('LABEL_OK'),
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  NeumorphicButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      AppLocalizations.of(context).translate('LABEL_CANCEL'),
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              );
            },
          );
        },
      );
    }
  }

  Widget _enableAutoLoginListTile() {
    return SwitchListTile(
      title: Text(
        AppLocalizations.of(context).translate('MESSAGE_ENABLE_AUTO_LOGIN'),
        style: Theme.of(context).primaryTextTheme.subtitle1,
      ),
      value: state.setting.hasToken && state.setting.isAutoLogin,
      onChanged: state.setting.hasToken
          ? (bool value) {
              BlocProvider.of<sb.SettingBloc>(context).add(
                sb.SettingEvent.setAutoLogin(
                  status: !state.setting.isAutoLogin,
                ),
              );
            }
          : null,
      secondary: Neumorphic(
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(3.0)),
          shape: NeumorphicShape.convex,
          depth: 1.5,
          color: Colors.blueAccent,
        ),
        child: Icon(
          Icons.power,
          color: Theme.of(context).accentIconTheme.color,
        ),
      ),
      dense: true,
    );
  }

  Widget _deleteCacheFileListTile(bloc) {
    return SettingListTile(
      icon: Icons.restore_from_trash,
      color: Colors.deepOrange,
      text: AppLocalizations.of(context).translate('MESSAGE_DELETE_CACHE_FILES'),
      onTap: () {
        return showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: Text(AppLocalizations.of(context).translate('MESSAGE_DELETE_CACHE_FILES')),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                      AppLocalizations.of(context).translate('MESSAGE_DELETE_CACHE_FILES_DESC'),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                NeumorphicButton(
                  onPressed: () {
                    bloc.add(sb.SettingEvent.deleteCacheFiles());
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    AppLocalizations.of(context).translate('LABEL_YES'),
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                NeumorphicButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    AppLocalizations.of(context).translate('LABEL_NO'),
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _title(String title) {
    return ListTile(
      enabled: false,
      title: Text(
        title,
        style: Theme.of(context).primaryTextTheme.headline5.copyWith(color: Colors.black45),
      ),
    );
  }
}
