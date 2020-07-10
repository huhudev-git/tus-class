part of 'attendance_rate_bloc.dart';

@freezed
abstract class AttendanceRateState with _$AttendanceRateState {
  const factory AttendanceRateState.initial() = Initial;
  const factory AttendanceRateState.loading() = Loading;
  const factory AttendanceRateState.failed({Failure error}) = Failed;
  const factory AttendanceRateState.loaded({
    List<AttendanceRate> rates,
    String selectCode,
    String selectCourse,
  }) = Loaded;
}
