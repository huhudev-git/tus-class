import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../auth/data/datasources/auth_data_source.dart';
import '../models/setting_model.dart';

abstract class SettingDataSource {
  Future<SettingModel> init();
  Future<void> setAutoLogin({bool status});
  Future<void> deleteAutoLogin();
  Future<void> setAuthToken(String username, String password);
  Future<void> deleteCacheFiles();
}

@LazySingleton(as: SettingDataSource)
class SettingDataSourceImpl implements SettingDataSource {
  final SharedPreferences sharedPreferences;
  final FlutterSecureStorage secureStorage;
  final AuthDataSource authDataSource;

  SettingDataSourceImpl({
    @required this.sharedPreferences,
    @required this.secureStorage,
    @required this.authDataSource,
  });

  @override
  Future<SettingModel> init() async {
    final isAutoLogin = await authDataSource.isAutoLogin();
    final hasToken = await authDataSource.hasToken();
    return SettingModel.fromJson({
      'isAutoLogin': isAutoLogin,
      'hasToken': hasToken,
    });
  }

  @override
  Future<void> setAutoLogin({bool status}) async {
    await authDataSource.setAutoLogin(status: status);
  }

  @override
  Future<void> deleteAutoLogin() async {
    await authDataSource.deleteToken();
  }

  @override
  Future<void> setAuthToken(String username, String password) async {
    await authDataSource.persistToken(username, password);
  }

  @override
  Future<void> deleteCacheFiles() async {
    final appDir = (await getTemporaryDirectory()).path;
    final list = Directory(appDir).listSync();
    for (final f in list) {
      if (f is File) {
        f.delete();
      }
    }
  }
}
