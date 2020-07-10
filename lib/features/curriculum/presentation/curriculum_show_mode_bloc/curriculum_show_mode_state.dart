part of 'curriculum_show_mode_bloc.dart';

@freezed
abstract class CurriculumShowModeState with _$CurriculumShowModeState {
  const factory CurriculumShowModeState.initial() = Initial;
  const factory CurriculumShowModeState.loading() = Loading;
  const factory CurriculumShowModeState.failed({Failure error}) = Failed;
  const factory CurriculumShowModeState.loaded({ShowMode mode}) = Loaded;
}
