import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/auth_token_model.dart';

const String autoLoginUsername = 'AUTO_LOGIN_USERNAME';
const String autoLoginPassword = 'AUTO_LOGIN_PASSWORD';
const String autoLoginState = 'AUTO_LOGIN_STATE';

abstract class AuthDataSource {
  Future<AuthTokenModel> getToken();
  Future<bool> hasToken();
  Future<void> persistToken(String username, String password);
  Future<void> deleteToken();
  Future<bool> isAutoLogin();
  Future<void> setAutoLogin({bool status});
}

@LazySingleton(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  final SharedPreferences sharedPreferences;
  final FlutterSecureStorage secureStorage;

  AuthDataSourceImpl({
    @required this.sharedPreferences,
    @required this.secureStorage,
  });

  @override
  Future<void> deleteToken() async {
    await secureStorage.delete(key: autoLoginUsername);
    await secureStorage.delete(key: autoLoginPassword);
    await setAutoLogin(status: false);
  }

  @override
  Future<AuthTokenModel> getToken() async {
    final username = await secureStorage.read(key: autoLoginUsername);
    final password = await secureStorage.read(key: autoLoginPassword);
    return AuthTokenModel.fromJson({
      'username': username,
      'password': password,
    });
  }

  @override
  Future<bool> hasToken() async {
    final username = await secureStorage.read(key: autoLoginUsername);
    final password = await secureStorage.read(key: autoLoginPassword);
    return username != null && password != null;
  }

  @override
  Future<void> persistToken(String username, String password) async {
    await secureStorage.write(key: autoLoginUsername, value: username);
    await secureStorage.write(key: autoLoginPassword, value: password);
    await setAutoLogin(status: true);
  }

  @override
  Future<bool> isAutoLogin() async {
    return sharedPreferences.getBool(autoLoginState) ?? false;
  }

  @override
  Future<void> setAutoLogin({bool status}) async {
    await sharedPreferences.setBool(autoLoginState, status);
  }
}
