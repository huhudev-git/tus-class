part of 'version_bloc.dart';

@freezed
abstract class VersionEvent with _$VersionEvent {
  const factory VersionEvent.check() = Check;
}
