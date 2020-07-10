part of 'curriculum_setting_bloc.dart';

@freezed
abstract class CurriculumSettingState with _$CurriculumSettingState {
  const factory CurriculumSettingState.initial() = Initial;
  const factory CurriculumSettingState.loading() = Loading;
  const factory CurriculumSettingState.failed({Failure error}) = Failed;
  const factory CurriculumSettingState.loaded({List<CurriculumSetting> settings}) = Loaded;
}
