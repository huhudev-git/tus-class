part of 'version_bloc.dart';

@freezed
abstract class VersionState with _$VersionState {
  const factory VersionState.initial() = Initial;
  const factory VersionState.loading() = Loading;
  const factory VersionState.loaded({bool hasUpdate}) = Loaded;
  const factory VersionState.failed({Failure error}) = Failed;
}
