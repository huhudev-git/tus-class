import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/attendance_rate.dart';

part 'attendance_rate_model.freezed.dart';
part 'attendance_rate_model.g.dart';

@freezed
abstract class AttendanceRateModel implements _$AttendanceRateModel {
  const factory AttendanceRateModel({
    @required String code,
    @required String course,
    @required int rate,
  }) = _AttendanceRateModel;
  const AttendanceRateModel._();

  AttendanceRate toDomain() {
    return AttendanceRate(
      code: code,
      course: course,
      rate: rate,
    );
  }

  factory AttendanceRateModel.fromDomain(AttendanceRate curriculum) {
    return AttendanceRateModel(
      code: curriculum.code,
      course: curriculum.course,
      rate: curriculum.rate,
    );
  }

  factory AttendanceRateModel.fromJson(Map<String, dynamic> json) => _$AttendanceRateModelFromJson(json);
}
