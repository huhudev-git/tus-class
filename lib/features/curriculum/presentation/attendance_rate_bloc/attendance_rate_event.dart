part of 'attendance_rate_bloc.dart';

@freezed
abstract class AttendanceRateEvent with _$AttendanceRateEvent {
  const factory AttendanceRateEvent.fetchAttendanceRate() = FetchAttendanceRate;
}
