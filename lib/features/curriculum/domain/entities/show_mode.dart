import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_mode.freezed.dart';

@freezed
abstract class ShowModeDetail with _$ShowModeDetail {
  const factory ShowModeDetail({
    @required IconData icon,
    @required double width,
    @required int day,
    @required int period,
  }) = _ShowModeDetail;

  factory ShowModeDetail.regular() => ShowModeDetail(
        icon: Icons.view_agenda,
        width: 0.18,
        day: 5,
        period: 5,
      );

  factory ShowModeDetail.weekend() => ShowModeDetail(
        icon: Icons.view_week,
        width: 0.15,
        day: 7,
        period: 5,
      );

  factory ShowModeDetail.night() => ShowModeDetail(
        icon: Icons.view_module,
        width: 0.18,
        day: 5,
        period: 7,
      );

  factory ShowModeDetail.nightWeekend() => ShowModeDetail(
        icon: Icons.view_comfy,
        width: 0.15,
        day: 6,
        period: 7,
      );
}

@freezed
abstract class ShowMode with _$ShowMode {
  const factory ShowMode.regular() = Regular;
  const factory ShowMode.weekend() = Weekend;
  const factory ShowMode.night() = Night;
  const factory ShowMode.nightWeekend() = NightWeekend;
}
