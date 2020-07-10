part of 'about_bloc.dart';

@freezed
abstract class AboutState with _$AboutState {
  const factory AboutState({
    About about,
    Failure error,
  }) = _AboutState;

  factory AboutState.initial() => AboutState(about: About.init());
}
