part of 'i18n_bloc.dart';

@freezed
abstract class I18nState with _$I18nState {
  const factory I18nState.initial({Locale locale}) = Initial;
  const factory I18nState.loaded({Locale locale}) = Loaded;
}
