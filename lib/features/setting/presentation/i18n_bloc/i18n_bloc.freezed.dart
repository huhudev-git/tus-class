// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'i18n_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$I18nEventTearOff {
  const _$I18nEventTearOff();

// ignore: unused_element
  Init init() {
    return const Init();
  }

// ignore: unused_element
  SwitchLanguage switchLanguage(
      {String languageCode, String scriptCode, String countryCode}) {
    return SwitchLanguage(
      languageCode: languageCode,
      scriptCode: scriptCode,
      countryCode: countryCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $I18nEvent = _$I18nEventTearOff();

/// @nodoc
mixin _$I18nEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result switchLanguage(
            String languageCode, String scriptCode, String countryCode),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result switchLanguage(
        String languageCode, String scriptCode, String countryCode),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result switchLanguage(SwitchLanguage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result switchLanguage(SwitchLanguage value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $I18nEventCopyWith<$Res> {
  factory $I18nEventCopyWith(I18nEvent value, $Res Function(I18nEvent) then) =
      _$I18nEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$I18nEventCopyWithImpl<$Res> implements $I18nEventCopyWith<$Res> {
  _$I18nEventCopyWithImpl(this._value, this._then);

  final I18nEvent _value;
  // ignore: unused_field
  final $Res Function(I18nEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$I18nEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc
class _$Init with DiagnosticableTreeMixin implements Init {
  const _$Init();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'I18nEvent.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'I18nEvent.init'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result switchLanguage(
            String languageCode, String scriptCode, String countryCode),
  }) {
    assert(init != null);
    assert(switchLanguage != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result switchLanguage(
        String languageCode, String scriptCode, String countryCode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result switchLanguage(SwitchLanguage value),
  }) {
    assert(init != null);
    assert(switchLanguage != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result switchLanguage(SwitchLanguage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements I18nEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $SwitchLanguageCopyWith<$Res> {
  factory $SwitchLanguageCopyWith(
          SwitchLanguage value, $Res Function(SwitchLanguage) then) =
      _$SwitchLanguageCopyWithImpl<$Res>;
  $Res call({String languageCode, String scriptCode, String countryCode});
}

/// @nodoc
class _$SwitchLanguageCopyWithImpl<$Res> extends _$I18nEventCopyWithImpl<$Res>
    implements $SwitchLanguageCopyWith<$Res> {
  _$SwitchLanguageCopyWithImpl(
      SwitchLanguage _value, $Res Function(SwitchLanguage) _then)
      : super(_value, (v) => _then(v as SwitchLanguage));

  @override
  SwitchLanguage get _value => super._value as SwitchLanguage;

  @override
  $Res call({
    Object languageCode = freezed,
    Object scriptCode = freezed,
    Object countryCode = freezed,
  }) {
    return _then(SwitchLanguage(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode as String,
      scriptCode:
          scriptCode == freezed ? _value.scriptCode : scriptCode as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

/// @nodoc
class _$SwitchLanguage with DiagnosticableTreeMixin implements SwitchLanguage {
  const _$SwitchLanguage(
      {this.languageCode, this.scriptCode, this.countryCode});

  @override
  final String languageCode;
  @override
  final String scriptCode;
  @override
  final String countryCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'I18nEvent.switchLanguage(languageCode: $languageCode, scriptCode: $scriptCode, countryCode: $countryCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'I18nEvent.switchLanguage'))
      ..add(DiagnosticsProperty('languageCode', languageCode))
      ..add(DiagnosticsProperty('scriptCode', scriptCode))
      ..add(DiagnosticsProperty('countryCode', countryCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SwitchLanguage &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.scriptCode, scriptCode) ||
                const DeepCollectionEquality()
                    .equals(other.scriptCode, scriptCode)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(scriptCode) ^
      const DeepCollectionEquality().hash(countryCode);

  @override
  $SwitchLanguageCopyWith<SwitchLanguage> get copyWith =>
      _$SwitchLanguageCopyWithImpl<SwitchLanguage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result switchLanguage(
            String languageCode, String scriptCode, String countryCode),
  }) {
    assert(init != null);
    assert(switchLanguage != null);
    return switchLanguage(languageCode, scriptCode, countryCode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result switchLanguage(
        String languageCode, String scriptCode, String countryCode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchLanguage != null) {
      return switchLanguage(languageCode, scriptCode, countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result switchLanguage(SwitchLanguage value),
  }) {
    assert(init != null);
    assert(switchLanguage != null);
    return switchLanguage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result switchLanguage(SwitchLanguage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchLanguage != null) {
      return switchLanguage(this);
    }
    return orElse();
  }
}

abstract class SwitchLanguage implements I18nEvent {
  const factory SwitchLanguage(
      {String languageCode,
      String scriptCode,
      String countryCode}) = _$SwitchLanguage;

  String get languageCode;
  String get scriptCode;
  String get countryCode;
  $SwitchLanguageCopyWith<SwitchLanguage> get copyWith;
}

/// @nodoc
class _$I18nStateTearOff {
  const _$I18nStateTearOff();

// ignore: unused_element
  Initial initial({Locale locale}) {
    return Initial(
      locale: locale,
    );
  }

// ignore: unused_element
  Loaded loaded({Locale locale}) {
    return Loaded(
      locale: locale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $I18nState = _$I18nStateTearOff();

/// @nodoc
mixin _$I18nState {
  Locale get locale;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Locale locale),
    @required Result loaded(Locale locale),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Locale locale),
    Result loaded(Locale locale),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loaded(Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loaded(Loaded value),
    @required Result orElse(),
  });

  $I18nStateCopyWith<I18nState> get copyWith;
}

/// @nodoc
abstract class $I18nStateCopyWith<$Res> {
  factory $I18nStateCopyWith(I18nState value, $Res Function(I18nState) then) =
      _$I18nStateCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$I18nStateCopyWithImpl<$Res> implements $I18nStateCopyWith<$Res> {
  _$I18nStateCopyWithImpl(this._value, this._then);

  final I18nState _value;
  // ignore: unused_field
  final $Res Function(I18nState) _then;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $I18nStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$I18nStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(Initial(
      locale: locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial({this.locale});

  @override
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'I18nState.initial(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'I18nState.initial'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Locale locale),
    @required Result loaded(Locale locale),
  }) {
    assert(initial != null);
    assert(loaded != null);
    return initial(locale);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Locale locale),
    Result loaded(Locale locale),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements I18nState {
  const factory Initial({Locale locale}) = _$Initial;

  @override
  Locale get locale;
  @override
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $I18nStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$I18nStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object locale = freezed,
  }) {
    return _then(Loaded(
      locale: locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
class _$Loaded with DiagnosticableTreeMixin implements Loaded {
  const _$Loaded({this.locale});

  @override
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'I18nState.loaded(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'I18nState.loaded'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Locale locale),
    @required Result loaded(Locale locale),
  }) {
    assert(initial != null);
    assert(loaded != null);
    return loaded(locale);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Locale locale),
    Result loaded(Locale locale),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements I18nState {
  const factory Loaded({Locale locale}) = _$Loaded;

  @override
  Locale get locale;
  @override
  $LoadedCopyWith<Loaded> get copyWith;
}
