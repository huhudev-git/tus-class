part of 'i18n_bloc.dart';

@freezed
abstract class I18nEvent with _$I18nEvent {
  const factory I18nEvent.init() = Init;
  const factory I18nEvent.switchLanguage({
    String languageCode,
    String scriptCode,
    String countryCode,
  }) = SwitchLanguage;
}
