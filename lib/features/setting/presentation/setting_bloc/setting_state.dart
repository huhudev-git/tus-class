part of 'setting_bloc.dart';

@freezed
abstract class SettingState with _$SettingState {
  const factory SettingState({
    Setting setting,
    Failure error,
  }) = _SettingState;

  factory SettingState.initial() => SettingState(setting: Setting.init());
}
