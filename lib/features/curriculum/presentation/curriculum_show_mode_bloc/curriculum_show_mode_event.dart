part of 'curriculum_show_mode_bloc.dart';

@freezed
abstract class CurriculumShowModeEvent with _$CurriculumShowModeEvent {
  const factory CurriculumShowModeEvent.init() = Init;
  const factory CurriculumShowModeEvent.switchShowMode() = SwitchShowMode;
}
