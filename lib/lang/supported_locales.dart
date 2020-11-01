import 'package:flutter/material.dart';

const supportedLocales = [
  Locale('ja', 'JP'),
  Locale('en', 'US'),
  //Locale('zh', 'CN'),
  Locale.fromSubtags(languageCode: 'zh'),
  Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
  Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
  Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
  Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant', countryCode: 'HK'),
];
