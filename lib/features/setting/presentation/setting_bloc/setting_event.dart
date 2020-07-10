part of 'setting_bloc.dart';

@freezed
abstract class SettingEvent with _$SettingEvent {
  const factory SettingEvent.init() = Init;
  const factory SettingEvent.setAutoLogin({bool status}) = SetAutoLogin;
  const factory SettingEvent.deleteAuthToken() = DeleteAuthToken;
  const factory SettingEvent.setAuthToken({String username, String password}) = SetAuthToken;
  const factory SettingEvent.deleteCacheFiles() = DeleteCacheFiles;
}
