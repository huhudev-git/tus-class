import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/setting.dart';

part 'setting_model.freezed.dart';
part 'setting_model.g.dart';

@freezed
abstract class SettingModel implements _$SettingModel {
  const factory SettingModel({
    @required bool isAutoLogin,
    @required bool hasToken,
  }) = _SettingModel;
  const SettingModel._();

  Setting toDomain() {
    return Setting(
      isAutoLogin: isAutoLogin,
      hasToken: hasToken,
    );
  }

  factory SettingModel.fromJson(Map<String, dynamic> json) => _$SettingModelFromJson(json);
}
