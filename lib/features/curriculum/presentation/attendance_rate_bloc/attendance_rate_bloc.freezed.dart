// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'attendance_rate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AttendanceRateEventTearOff {
  const _$AttendanceRateEventTearOff();

  FetchAttendanceRate fetchAttendanceRate() {
    return const FetchAttendanceRate();
  }
}

// ignore: unused_element
const $AttendanceRateEvent = _$AttendanceRateEventTearOff();

mixin _$AttendanceRateEvent {}

abstract class $AttendanceRateEventCopyWith<$Res> {
  factory $AttendanceRateEventCopyWith(
          AttendanceRateEvent value, $Res Function(AttendanceRateEvent) then) =
      _$AttendanceRateEventCopyWithImpl<$Res>;
}

class _$AttendanceRateEventCopyWithImpl<$Res>
    implements $AttendanceRateEventCopyWith<$Res> {
  _$AttendanceRateEventCopyWithImpl(this._value, this._then);

  final AttendanceRateEvent _value;
  // ignore: unused_field
  final $Res Function(AttendanceRateEvent) _then;
}

abstract class $FetchAttendanceRateCopyWith<$Res> {
  factory $FetchAttendanceRateCopyWith(
          FetchAttendanceRate value, $Res Function(FetchAttendanceRate) then) =
      _$FetchAttendanceRateCopyWithImpl<$Res>;
}

class _$FetchAttendanceRateCopyWithImpl<$Res>
    extends _$AttendanceRateEventCopyWithImpl<$Res>
    implements $FetchAttendanceRateCopyWith<$Res> {
  _$FetchAttendanceRateCopyWithImpl(
      FetchAttendanceRate _value, $Res Function(FetchAttendanceRate) _then)
      : super(_value, (v) => _then(v as FetchAttendanceRate));

  @override
  FetchAttendanceRate get _value => super._value as FetchAttendanceRate;
}

class _$FetchAttendanceRate implements FetchAttendanceRate {
  const _$FetchAttendanceRate();

  @override
  String toString() {
    return 'AttendanceRateEvent.fetchAttendanceRate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchAttendanceRate);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class FetchAttendanceRate implements AttendanceRateEvent {
  const factory FetchAttendanceRate() = _$FetchAttendanceRate;
}

class _$AttendanceRateStateTearOff {
  const _$AttendanceRateStateTearOff();

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

  Loaded loaded(
      {List<AttendanceRate> rates, String selectCode, String selectCourse}) {
    return Loaded(
      rates: rates,
      selectCode: selectCode,
      selectCourse: selectCourse,
    );
  }
}

// ignore: unused_element
const $AttendanceRateState = _$AttendanceRateStateTearOff();

mixin _$AttendanceRateState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required
        Result loaded(
            List<AttendanceRate> rates, String selectCode, String selectCourse),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(
        List<AttendanceRate> rates, String selectCode, String selectCourse),
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

abstract class $AttendanceRateStateCopyWith<$Res> {
  factory $AttendanceRateStateCopyWith(
          AttendanceRateState value, $Res Function(AttendanceRateState) then) =
      _$AttendanceRateStateCopyWithImpl<$Res>;
}

class _$AttendanceRateStateCopyWithImpl<$Res>
    implements $AttendanceRateStateCopyWith<$Res> {
  _$AttendanceRateStateCopyWithImpl(this._value, this._then);

  final AttendanceRateState _value;
  // ignore: unused_field
  final $Res Function(AttendanceRateState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$AttendanceRateStateCopyWithImpl<$Res>
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
    return 'AttendanceRateState.initial()';
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
    @required
        Result loaded(
            List<AttendanceRate> rates, String selectCode, String selectCourse),
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
    Result loaded(
        List<AttendanceRate> rates, String selectCode, String selectCourse),
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

abstract class Initial implements AttendanceRateState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res>
    extends _$AttendanceRateStateCopyWithImpl<$Res>
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
    return 'AttendanceRateState.loading()';
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
    @required
        Result loaded(
            List<AttendanceRate> rates, String selectCode, String selectCourse),
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
    Result loaded(
        List<AttendanceRate> rates, String selectCode, String selectCourse),
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

abstract class Loading implements AttendanceRateState {
  const factory Loading() = _$Loading;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

class _$FailedCopyWithImpl<$Res> extends _$AttendanceRateStateCopyWithImpl<$Res>
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
    return 'AttendanceRateState.failed(error: $error)';
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
    @required
        Result loaded(
            List<AttendanceRate> rates, String selectCode, String selectCourse),
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
    Result loaded(
        List<AttendanceRate> rates, String selectCode, String selectCourse),
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

abstract class Failed implements AttendanceRateState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<AttendanceRate> rates, String selectCode, String selectCourse});
}

class _$LoadedCopyWithImpl<$Res> extends _$AttendanceRateStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object rates = freezed,
    Object selectCode = freezed,
    Object selectCourse = freezed,
  }) {
    return _then(Loaded(
      rates: rates == freezed ? _value.rates : rates as List<AttendanceRate>,
      selectCode:
          selectCode == freezed ? _value.selectCode : selectCode as String,
      selectCourse: selectCourse == freezed
          ? _value.selectCourse
          : selectCourse as String,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded({this.rates, this.selectCode, this.selectCourse});

  @override
  final List<AttendanceRate> rates;
  @override
  final String selectCode;
  @override
  final String selectCourse;

  @override
  String toString() {
    return 'AttendanceRateState.loaded(rates: $rates, selectCode: $selectCode, selectCourse: $selectCourse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.rates, rates) ||
                const DeepCollectionEquality().equals(other.rates, rates)) &&
            (identical(other.selectCode, selectCode) ||
                const DeepCollectionEquality()
                    .equals(other.selectCode, selectCode)) &&
            (identical(other.selectCourse, selectCourse) ||
                const DeepCollectionEquality()
                    .equals(other.selectCourse, selectCourse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rates) ^
      const DeepCollectionEquality().hash(selectCode) ^
      const DeepCollectionEquality().hash(selectCourse);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required
        Result loaded(
            List<AttendanceRate> rates, String selectCode, String selectCourse),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(rates, selectCode, selectCourse);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(
        List<AttendanceRate> rates, String selectCode, String selectCourse),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(rates, selectCode, selectCourse);
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

abstract class Loaded implements AttendanceRateState {
  const factory Loaded(
      {List<AttendanceRate> rates,
      String selectCode,
      String selectCourse}) = _$Loaded;

  List<AttendanceRate> get rates;
  String get selectCode;
  String get selectCourse;
  $LoadedCopyWith<Loaded> get copyWith;
}
