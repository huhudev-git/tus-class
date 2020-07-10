import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/show_mode.dart';

part 'show_mode_model.freezed.dart';
part 'show_mode_model.g.dart';

@freezed
abstract class ShowModeModel implements _$ShowModeModel {
  const factory ShowModeModel.regular() = Regular;
  const factory ShowModeModel.weekend() = Weekend;
  const factory ShowModeModel.night() = Night;
  const factory ShowModeModel.nightWeekend() = NightWeekend;

  factory ShowModeModel.fromDomain(ShowMode mode) {
    return mode.map(
      regular: (_) => const ShowModeModel.regular(),
      weekend: (_) => const ShowModeModel.weekend(),
      night: (_) => const ShowModeModel.night(),
      nightWeekend: (_) => const ShowModeModel.nightWeekend(),
    );
  }
  const ShowModeModel._();

  ShowMode toDomain() {
    return map(
      regular: (_) => const ShowMode.regular(),
      weekend: (_) => const ShowMode.weekend(),
      night: (_) => const ShowMode.night(),
      nightWeekend: (_) => const ShowMode.nightWeekend(),
    );
  }

  factory ShowModeModel.fromJson(Map<String, dynamic> json) => _$ShowModeModelFromJson(json);
}
