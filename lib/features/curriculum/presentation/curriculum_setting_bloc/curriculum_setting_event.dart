part of 'curriculum_setting_bloc.dart';

@freezed
abstract class CurriculumSettingEvent with _$CurriculumSettingEvent {
  const factory CurriculumSettingEvent.getCurriculumSetting({String code, String course}) = GetCurriculumSetting;
  const factory CurriculumSettingEvent.getAllCurriculumSetting() = GetAllCurriculumSetting;
  const factory CurriculumSettingEvent.deleteCurriculumSetting({CurriculumSetting setting}) = DeleteCurriculumSetting;
  const factory CurriculumSettingEvent.saveCurriculumSetting({CurriculumSetting setting}) = SaveCurriculumSetting;
}
