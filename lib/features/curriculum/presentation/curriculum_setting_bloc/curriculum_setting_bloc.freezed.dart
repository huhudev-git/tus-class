// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'curriculum_setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CurriculumSettingEventTearOff {
  const _$CurriculumSettingEventTearOff();

  GetCurriculumSetting getCurriculumSetting({String code, String course}) {
    return GetCurriculumSetting(
      code: code,
      course: course,
    );
  }

  GetAllCurriculumSetting getAllCurriculumSetting() {
    return const GetAllCurriculumSetting();
  }

  DeleteCurriculumSetting deleteCurriculumSetting({CurriculumSetting setting}) {
    return DeleteCurriculumSetting(
      setting: setting,
    );
  }

  SaveCurriculumSetting saveCurriculumSetting({CurriculumSetting setting}) {
    return SaveCurriculumSetting(
      setting: setting,
    );
  }
}

// ignore: unused_element
const $CurriculumSettingEvent = _$CurriculumSettingEventTearOff();

mixin _$CurriculumSettingEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCurriculumSetting(String code, String course),
    @required Result getAllCurriculumSetting(),
    @required Result deleteCurriculumSetting(CurriculumSetting setting),
    @required Result saveCurriculumSetting(CurriculumSetting setting),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCurriculumSetting(String code, String course),
    Result getAllCurriculumSetting(),
    Result deleteCurriculumSetting(CurriculumSetting setting),
    Result saveCurriculumSetting(CurriculumSetting setting),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCurriculumSetting(GetCurriculumSetting value),
    @required Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    @required Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    @required Result saveCurriculumSetting(SaveCurriculumSetting value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCurriculumSetting(GetCurriculumSetting value),
    Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    Result saveCurriculumSetting(SaveCurriculumSetting value),
    @required Result orElse(),
  });
}

abstract class $CurriculumSettingEventCopyWith<$Res> {
  factory $CurriculumSettingEventCopyWith(CurriculumSettingEvent value,
          $Res Function(CurriculumSettingEvent) then) =
      _$CurriculumSettingEventCopyWithImpl<$Res>;
}

class _$CurriculumSettingEventCopyWithImpl<$Res>
    implements $CurriculumSettingEventCopyWith<$Res> {
  _$CurriculumSettingEventCopyWithImpl(this._value, this._then);

  final CurriculumSettingEvent _value;
  // ignore: unused_field
  final $Res Function(CurriculumSettingEvent) _then;
}

abstract class $GetCurriculumSettingCopyWith<$Res> {
  factory $GetCurriculumSettingCopyWith(GetCurriculumSetting value,
          $Res Function(GetCurriculumSetting) then) =
      _$GetCurriculumSettingCopyWithImpl<$Res>;
  $Res call({String code, String course});
}

class _$GetCurriculumSettingCopyWithImpl<$Res>
    extends _$CurriculumSettingEventCopyWithImpl<$Res>
    implements $GetCurriculumSettingCopyWith<$Res> {
  _$GetCurriculumSettingCopyWithImpl(
      GetCurriculumSetting _value, $Res Function(GetCurriculumSetting) _then)
      : super(_value, (v) => _then(v as GetCurriculumSetting));

  @override
  GetCurriculumSetting get _value => super._value as GetCurriculumSetting;

  @override
  $Res call({
    Object code = freezed,
    Object course = freezed,
  }) {
    return _then(GetCurriculumSetting(
      code: code == freezed ? _value.code : code as String,
      course: course == freezed ? _value.course : course as String,
    ));
  }
}

class _$GetCurriculumSetting implements GetCurriculumSetting {
  const _$GetCurriculumSetting({this.code, this.course});

  @override
  final String code;
  @override
  final String course;

  @override
  String toString() {
    return 'CurriculumSettingEvent.getCurriculumSetting(code: $code, course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCurriculumSetting &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(course);

  @override
  $GetCurriculumSettingCopyWith<GetCurriculumSetting> get copyWith =>
      _$GetCurriculumSettingCopyWithImpl<GetCurriculumSetting>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCurriculumSetting(String code, String course),
    @required Result getAllCurriculumSetting(),
    @required Result deleteCurriculumSetting(CurriculumSetting setting),
    @required Result saveCurriculumSetting(CurriculumSetting setting),
  }) {
    assert(getCurriculumSetting != null);
    assert(getAllCurriculumSetting != null);
    assert(deleteCurriculumSetting != null);
    assert(saveCurriculumSetting != null);
    return getCurriculumSetting(code, course);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCurriculumSetting(String code, String course),
    Result getAllCurriculumSetting(),
    Result deleteCurriculumSetting(CurriculumSetting setting),
    Result saveCurriculumSetting(CurriculumSetting setting),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurriculumSetting != null) {
      return getCurriculumSetting(code, course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCurriculumSetting(GetCurriculumSetting value),
    @required Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    @required Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    @required Result saveCurriculumSetting(SaveCurriculumSetting value),
  }) {
    assert(getCurriculumSetting != null);
    assert(getAllCurriculumSetting != null);
    assert(deleteCurriculumSetting != null);
    assert(saveCurriculumSetting != null);
    return getCurriculumSetting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCurriculumSetting(GetCurriculumSetting value),
    Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    Result saveCurriculumSetting(SaveCurriculumSetting value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurriculumSetting != null) {
      return getCurriculumSetting(this);
    }
    return orElse();
  }
}

abstract class GetCurriculumSetting implements CurriculumSettingEvent {
  const factory GetCurriculumSetting({String code, String course}) =
      _$GetCurriculumSetting;

  String get code;
  String get course;
  $GetCurriculumSettingCopyWith<GetCurriculumSetting> get copyWith;
}

abstract class $GetAllCurriculumSettingCopyWith<$Res> {
  factory $GetAllCurriculumSettingCopyWith(GetAllCurriculumSetting value,
          $Res Function(GetAllCurriculumSetting) then) =
      _$GetAllCurriculumSettingCopyWithImpl<$Res>;
}

class _$GetAllCurriculumSettingCopyWithImpl<$Res>
    extends _$CurriculumSettingEventCopyWithImpl<$Res>
    implements $GetAllCurriculumSettingCopyWith<$Res> {
  _$GetAllCurriculumSettingCopyWithImpl(GetAllCurriculumSetting _value,
      $Res Function(GetAllCurriculumSetting) _then)
      : super(_value, (v) => _then(v as GetAllCurriculumSetting));

  @override
  GetAllCurriculumSetting get _value => super._value as GetAllCurriculumSetting;
}

class _$GetAllCurriculumSetting implements GetAllCurriculumSetting {
  const _$GetAllCurriculumSetting();

  @override
  String toString() {
    return 'CurriculumSettingEvent.getAllCurriculumSetting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllCurriculumSetting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCurriculumSetting(String code, String course),
    @required Result getAllCurriculumSetting(),
    @required Result deleteCurriculumSetting(CurriculumSetting setting),
    @required Result saveCurriculumSetting(CurriculumSetting setting),
  }) {
    assert(getCurriculumSetting != null);
    assert(getAllCurriculumSetting != null);
    assert(deleteCurriculumSetting != null);
    assert(saveCurriculumSetting != null);
    return getAllCurriculumSetting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCurriculumSetting(String code, String course),
    Result getAllCurriculumSetting(),
    Result deleteCurriculumSetting(CurriculumSetting setting),
    Result saveCurriculumSetting(CurriculumSetting setting),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllCurriculumSetting != null) {
      return getAllCurriculumSetting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCurriculumSetting(GetCurriculumSetting value),
    @required Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    @required Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    @required Result saveCurriculumSetting(SaveCurriculumSetting value),
  }) {
    assert(getCurriculumSetting != null);
    assert(getAllCurriculumSetting != null);
    assert(deleteCurriculumSetting != null);
    assert(saveCurriculumSetting != null);
    return getAllCurriculumSetting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCurriculumSetting(GetCurriculumSetting value),
    Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    Result saveCurriculumSetting(SaveCurriculumSetting value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllCurriculumSetting != null) {
      return getAllCurriculumSetting(this);
    }
    return orElse();
  }
}

abstract class GetAllCurriculumSetting implements CurriculumSettingEvent {
  const factory GetAllCurriculumSetting() = _$GetAllCurriculumSetting;
}

abstract class $DeleteCurriculumSettingCopyWith<$Res> {
  factory $DeleteCurriculumSettingCopyWith(DeleteCurriculumSetting value,
          $Res Function(DeleteCurriculumSetting) then) =
      _$DeleteCurriculumSettingCopyWithImpl<$Res>;
  $Res call({CurriculumSetting setting});
}

class _$DeleteCurriculumSettingCopyWithImpl<$Res>
    extends _$CurriculumSettingEventCopyWithImpl<$Res>
    implements $DeleteCurriculumSettingCopyWith<$Res> {
  _$DeleteCurriculumSettingCopyWithImpl(DeleteCurriculumSetting _value,
      $Res Function(DeleteCurriculumSetting) _then)
      : super(_value, (v) => _then(v as DeleteCurriculumSetting));

  @override
  DeleteCurriculumSetting get _value => super._value as DeleteCurriculumSetting;

  @override
  $Res call({
    Object setting = freezed,
  }) {
    return _then(DeleteCurriculumSetting(
      setting:
          setting == freezed ? _value.setting : setting as CurriculumSetting,
    ));
  }
}

class _$DeleteCurriculumSetting implements DeleteCurriculumSetting {
  const _$DeleteCurriculumSetting({this.setting});

  @override
  final CurriculumSetting setting;

  @override
  String toString() {
    return 'CurriculumSettingEvent.deleteCurriculumSetting(setting: $setting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteCurriculumSetting &&
            (identical(other.setting, setting) ||
                const DeepCollectionEquality().equals(other.setting, setting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(setting);

  @override
  $DeleteCurriculumSettingCopyWith<DeleteCurriculumSetting> get copyWith =>
      _$DeleteCurriculumSettingCopyWithImpl<DeleteCurriculumSetting>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCurriculumSetting(String code, String course),
    @required Result getAllCurriculumSetting(),
    @required Result deleteCurriculumSetting(CurriculumSetting setting),
    @required Result saveCurriculumSetting(CurriculumSetting setting),
  }) {
    assert(getCurriculumSetting != null);
    assert(getAllCurriculumSetting != null);
    assert(deleteCurriculumSetting != null);
    assert(saveCurriculumSetting != null);
    return deleteCurriculumSetting(setting);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCurriculumSetting(String code, String course),
    Result getAllCurriculumSetting(),
    Result deleteCurriculumSetting(CurriculumSetting setting),
    Result saveCurriculumSetting(CurriculumSetting setting),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCurriculumSetting != null) {
      return deleteCurriculumSetting(setting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCurriculumSetting(GetCurriculumSetting value),
    @required Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    @required Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    @required Result saveCurriculumSetting(SaveCurriculumSetting value),
  }) {
    assert(getCurriculumSetting != null);
    assert(getAllCurriculumSetting != null);
    assert(deleteCurriculumSetting != null);
    assert(saveCurriculumSetting != null);
    return deleteCurriculumSetting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCurriculumSetting(GetCurriculumSetting value),
    Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    Result saveCurriculumSetting(SaveCurriculumSetting value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCurriculumSetting != null) {
      return deleteCurriculumSetting(this);
    }
    return orElse();
  }
}

abstract class DeleteCurriculumSetting implements CurriculumSettingEvent {
  const factory DeleteCurriculumSetting({CurriculumSetting setting}) =
      _$DeleteCurriculumSetting;

  CurriculumSetting get setting;
  $DeleteCurriculumSettingCopyWith<DeleteCurriculumSetting> get copyWith;
}

abstract class $SaveCurriculumSettingCopyWith<$Res> {
  factory $SaveCurriculumSettingCopyWith(SaveCurriculumSetting value,
          $Res Function(SaveCurriculumSetting) then) =
      _$SaveCurriculumSettingCopyWithImpl<$Res>;
  $Res call({CurriculumSetting setting});
}

class _$SaveCurriculumSettingCopyWithImpl<$Res>
    extends _$CurriculumSettingEventCopyWithImpl<$Res>
    implements $SaveCurriculumSettingCopyWith<$Res> {
  _$SaveCurriculumSettingCopyWithImpl(
      SaveCurriculumSetting _value, $Res Function(SaveCurriculumSetting) _then)
      : super(_value, (v) => _then(v as SaveCurriculumSetting));

  @override
  SaveCurriculumSetting get _value => super._value as SaveCurriculumSetting;

  @override
  $Res call({
    Object setting = freezed,
  }) {
    return _then(SaveCurriculumSetting(
      setting:
          setting == freezed ? _value.setting : setting as CurriculumSetting,
    ));
  }
}

class _$SaveCurriculumSetting implements SaveCurriculumSetting {
  const _$SaveCurriculumSetting({this.setting});

  @override
  final CurriculumSetting setting;

  @override
  String toString() {
    return 'CurriculumSettingEvent.saveCurriculumSetting(setting: $setting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveCurriculumSetting &&
            (identical(other.setting, setting) ||
                const DeepCollectionEquality().equals(other.setting, setting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(setting);

  @override
  $SaveCurriculumSettingCopyWith<SaveCurriculumSetting> get copyWith =>
      _$SaveCurriculumSettingCopyWithImpl<SaveCurriculumSetting>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCurriculumSetting(String code, String course),
    @required Result getAllCurriculumSetting(),
    @required Result deleteCurriculumSetting(CurriculumSetting setting),
    @required Result saveCurriculumSetting(CurriculumSetting setting),
  }) {
    assert(getCurriculumSetting != null);
    assert(getAllCurriculumSetting != null);
    assert(deleteCurriculumSetting != null);
    assert(saveCurriculumSetting != null);
    return saveCurriculumSetting(setting);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCurriculumSetting(String code, String course),
    Result getAllCurriculumSetting(),
    Result deleteCurriculumSetting(CurriculumSetting setting),
    Result saveCurriculumSetting(CurriculumSetting setting),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveCurriculumSetting != null) {
      return saveCurriculumSetting(setting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCurriculumSetting(GetCurriculumSetting value),
    @required Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    @required Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    @required Result saveCurriculumSetting(SaveCurriculumSetting value),
  }) {
    assert(getCurriculumSetting != null);
    assert(getAllCurriculumSetting != null);
    assert(deleteCurriculumSetting != null);
    assert(saveCurriculumSetting != null);
    return saveCurriculumSetting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCurriculumSetting(GetCurriculumSetting value),
    Result getAllCurriculumSetting(GetAllCurriculumSetting value),
    Result deleteCurriculumSetting(DeleteCurriculumSetting value),
    Result saveCurriculumSetting(SaveCurriculumSetting value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveCurriculumSetting != null) {
      return saveCurriculumSetting(this);
    }
    return orElse();
  }
}

abstract class SaveCurriculumSetting implements CurriculumSettingEvent {
  const factory SaveCurriculumSetting({CurriculumSetting setting}) =
      _$SaveCurriculumSetting;

  CurriculumSetting get setting;
  $SaveCurriculumSettingCopyWith<SaveCurriculumSetting> get copyWith;
}

class _$CurriculumSettingStateTearOff {
  const _$CurriculumSettingStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Failed failed({Failure error}) {
    return Failed(
      error: error,
    );
  }

  Loaded loaded({List<CurriculumSetting> settings}) {
    return Loaded(
      settings: settings,
    );
  }
}

// ignore: unused_element
const $CurriculumSettingState = _$CurriculumSettingStateTearOff();

mixin _$CurriculumSettingState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumSetting> settings),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumSetting> settings),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
    Result loaded(Loaded value),
    @required Result orElse(),
  });
}

abstract class $CurriculumSettingStateCopyWith<$Res> {
  factory $CurriculumSettingStateCopyWith(CurriculumSettingState value,
          $Res Function(CurriculumSettingState) then) =
      _$CurriculumSettingStateCopyWithImpl<$Res>;
}

class _$CurriculumSettingStateCopyWithImpl<$Res>
    implements $CurriculumSettingStateCopyWith<$Res> {
  _$CurriculumSettingStateCopyWithImpl(this._value, this._then);

  final CurriculumSettingState _value;
  // ignore: unused_field
  final $Res Function(CurriculumSettingState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$CurriculumSettingStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CurriculumSettingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumSetting> settings),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumSetting> settings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
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

abstract class Initial implements CurriculumSettingState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res>
    extends _$CurriculumSettingStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'CurriculumSettingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumSetting> settings),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumSetting> settings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CurriculumSettingState {
  const factory Loading() = _$Loading;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

class _$FailedCopyWithImpl<$Res>
    extends _$CurriculumSettingStateCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Failed(
      error: error == freezed ? _value.error : error as Failure,
    ));
  }
}

class _$Failed implements Failed {
  const _$Failed({this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'CurriculumSettingState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $FailedCopyWith<Failed> get copyWith =>
      _$FailedCopyWithImpl<Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumSetting> settings),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return failed(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumSetting> settings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements CurriculumSettingState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<CurriculumSetting> settings});
}

class _$LoadedCopyWithImpl<$Res>
    extends _$CurriculumSettingStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object settings = freezed,
  }) {
    return _then(Loaded(
      settings: settings == freezed
          ? _value.settings
          : settings as List<CurriculumSetting>,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded({this.settings});

  @override
  final List<CurriculumSetting> settings;

  @override
  String toString() {
    return 'CurriculumSettingState.loaded(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(settings);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumSetting> settings),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(settings);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumSetting> settings),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
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

abstract class Loaded implements CurriculumSettingState {
  const factory Loaded({List<CurriculumSetting> settings}) = _$Loaded;

  List<CurriculumSetting> get settings;
  $LoadedCopyWith<Loaded> get copyWith;
}
