import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tus_class/core/errors/exceptions.dart';

const String i18nLanguageCode = 'I18N_LANGUAGE_CODE';
const String i18nScriptCode = 'I18N_SCRIPT_CODE';
const String i18nCountryCode = 'I18N_Country_CODE';

abstract class I18nDataSource {
  Future<Locale> getLanguage();
  Future<void> setLanguage(String languageCode, String scriptCode, String countryCode);
}

@LazySingleton(as: I18nDataSource)
class I18nDataSourceImpl implements I18nDataSource {
  final SharedPreferences sharedPreferences;

  I18nDataSourceImpl({
    @required this.sharedPreferences,
  });

  @override
  Future<void> setLanguage(String languageCode, String scriptCode, String countryCode) async {
    await sharedPreferences.setString(i18nLanguageCode, languageCode);
    await sharedPreferences.setString(i18nScriptCode, scriptCode);
    await sharedPreferences.setString(i18nCountryCode, countryCode);
  }

  @override
  Future<Locale> getLanguage() async {
    final languageCode = sharedPreferences.getString(i18nLanguageCode);
    if (languageCode == null || languageCode == '') {
      throw CacheException();
    }

    final scriptCode = sharedPreferences.getString(i18nScriptCode);
    final countryCode = sharedPreferences.getString(i18nCountryCode);

    return Locale.fromSubtags(
      languageCode: languageCode,
      scriptCode: scriptCode,
      countryCode: countryCode,
    );
  }
}
