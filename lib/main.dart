import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:injectable/injectable.dart';

import 'design-system/behavior/behavior.dart';
import 'design-system/themes/light_theme.dart';
import 'features/auth/presentation/pages/auth_page.dart';
import 'features/setting/presentation/i18n_bloc/i18n_bloc.dart';
import 'injection_container.dart';
import 'lang/localizations.dart';
import 'lang/supported_locales.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized() is required in Flutter v1.9.4+
  // before using any plugins if the code is executed before runApp.
  WidgetsFlutterBinding.ensureInitialized();

  // injection
  await configureInjection(Environment.prod);

  // main
  runApp(
    NeumorphicTheme(
      theme: NeumorphicThemeData(
        boxShape: NeumorphicBoxShape.stadium(),
        baseColor: lightTheme.scaffoldBackgroundColor,
        accentColor: lightTheme.accentColor,
        depth: 3.0,
        intensity: 1.0,
      ),
      child: BlocProvider<I18nBloc>(
        create: (context) => getIt<I18nBloc>()..add(I18nEvent.init()),
        child: BlocBuilder<I18nBloc, I18nState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: AuthPage(),
              theme: lightTheme,
              locale: state.map(
                initial: (state) => state.locale,
                loaded: (state) => state.locale,
              ),
              supportedLocales: supportedLocales,
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                DefaultCupertinoLocalizations.delegate,
              ],
              // Returns a locale which will be used by the app
              localeResolutionCallback: (locale, supportedLocales) {
                // Check if the current device locale is supported
                for (final supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale.languageCode) {
                    return supportedLocale;
                  }
                }
                // If the locale of the device is not supported, use the first one
                // from the list (English, in this case).
                return supportedLocales.first;
              },
              builder: (context, child) {
                return ScrollConfiguration(
                  behavior: NoGlowScrollBehavior(),
                  child: child,
                );
              },
            );
          },
        ),
      ),
    ),
  );
}
