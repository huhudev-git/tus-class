// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'curriculum_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CurriculumEventTearOff {
  const _$CurriculumEventTearOff();

// ignore: unused_element
  FetchCurriculum fetchCurriculum(
      {int year, String semesterValue, bool isRefresh}) {
    return FetchCurriculum(
      year: year,
      semesterValue: semesterValue,
      isRefresh: isRefresh,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CurriculumEvent = _$CurriculumEventTearOff();

/// @nodoc
mixin _$CurriculumEvent {
  int get year;
  String get semesterValue;
  bool get isRefresh;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fetchCurriculum(int year, String semesterValue, bool isRefresh),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchCurriculum(int year, String semesterValue, bool isRefresh),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchCurriculum(FetchCurriculum value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchCurriculum(FetchCurriculum value),
    @required Result orElse(),
  });

  $CurriculumEventCopyWith<CurriculumEvent> get copyWith;
}

/// @nodoc
abstract class $CurriculumEventCopyWith<$Res> {
  factory $CurriculumEventCopyWith(
          CurriculumEvent value, $Res Function(CurriculumEvent) then) =
      _$CurriculumEventCopyWithImpl<$Res>;
  $Res call({int year, String semesterValue, bool isRefresh});
}

/// @nodoc
class _$CurriculumEventCopyWithImpl<$Res>
    implements $CurriculumEventCopyWith<$Res> {
  _$CurriculumEventCopyWithImpl(this._value, this._then);

  final CurriculumEvent _value;
  // ignore: unused_field
  final $Res Function(CurriculumEvent) _then;

  @override
  $Res call({
    Object year = freezed,
    Object semesterValue = freezed,
    Object isRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed ? _value.year : year as int,
      semesterValue: semesterValue == freezed
          ? _value.semesterValue
          : semesterValue as String,
      isRefresh: isRefresh == freezed ? _value.isRefresh : isRefresh as bool,
    ));
  }
}

/// @nodoc
abstract class $FetchCurriculumCopyWith<$Res>
    implements $CurriculumEventCopyWith<$Res> {
  factory $FetchCurriculumCopyWith(
          FetchCurriculum value, $Res Function(FetchCurriculum) then) =
      _$FetchCurriculumCopyWithImpl<$Res>;
  @override
  $Res call({int year, String semesterValue, bool isRefresh});
}

/// @nodoc
class _$FetchCurriculumCopyWithImpl<$Res>
    extends _$CurriculumEventCopyWithImpl<$Res>
    implements $FetchCurriculumCopyWith<$Res> {
  _$FetchCurriculumCopyWithImpl(
      FetchCurriculum _value, $Res Function(FetchCurriculum) _then)
      : super(_value, (v) => _then(v as FetchCurriculum));

  @override
  FetchCurriculum get _value => super._value as FetchCurriculum;

  @override
  $Res call({
    Object year = freezed,
    Object semesterValue = freezed,
    Object isRefresh = freezed,
  }) {
    return _then(FetchCurriculum(
      year: year == freezed ? _value.year : year as int,
      semesterValue: semesterValue == freezed
          ? _value.semesterValue
          : semesterValue as String,
      isRefresh: isRefresh == freezed ? _value.isRefresh : isRefresh as bool,
    ));
  }
}

/// @nodoc
class _$FetchCurriculum implements FetchCurriculum {
  const _$FetchCurriculum({this.year, this.semesterValue, this.isRefresh});

  @override
  final int year;
  @override
  final String semesterValue;
  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'CurriculumEvent.fetchCurriculum(year: $year, semesterValue: $semesterValue, isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchCurriculum &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.semesterValue, semesterValue) ||
                const DeepCollectionEquality()
                    .equals(other.semesterValue, semesterValue)) &&
            (identical(other.isRefresh, isRefresh) ||
                const DeepCollectionEquality()
                    .equals(other.isRefresh, isRefresh)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(semesterValue) ^
      const DeepCollectionEquality().hash(isRefresh);

  @override
  $FetchCurriculumCopyWith<FetchCurriculum> get copyWith =>
      _$FetchCurriculumCopyWithImpl<FetchCurriculum>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result fetchCurriculum(int year, String semesterValue, bool isRefresh),
  }) {
    assert(fetchCurriculum != null);
    return fetchCurriculum(year, semesterValue, isRefresh);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchCurriculum(int year, String semesterValue, bool isRefresh),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchCurriculum != null) {
      return fetchCurriculum(year, semesterValue, isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchCurriculum(FetchCurriculum value),
  }) {
    assert(fetchCurriculum != null);
    return fetchCurriculum(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchCurriculum(FetchCurriculum value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchCurriculum != null) {
      return fetchCurriculum(this);
    }
    return orElse();
  }
}

abstract class FetchCurriculum implements CurriculumEvent {
  const factory FetchCurriculum(
      {int year, String semesterValue, bool isRefresh}) = _$FetchCurriculum;

  @override
  int get year;
  @override
  String get semesterValue;
  @override
  bool get isRefresh;
  @override
  $FetchCurriculumCopyWith<FetchCurriculum> get copyWith;
}

/// @nodoc
class _$CurriculumStateTearOff {
  const _$CurriculumStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Failed failed({Failure error}) {
    return Failed(
      error: error,
    );
  }

// ignore: unused_element
  Loaded loaded({TimeTable timeTable}) {
    return Loaded(
      timeTable: timeTable,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CurriculumState = _$CurriculumStateTearOff();

/// @nodoc
mixin _$CurriculumState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(TimeTable timeTable),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(TimeTable timeTable),
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

/// @nodoc
abstract class $CurriculumStateCopyWith<$Res> {
  factory $CurriculumStateCopyWith(
          CurriculumState value, $Res Function(CurriculumState) then) =
      _$CurriculumStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurriculumStateCopyWithImpl<$Res>
    implements $CurriculumStateCopyWith<$Res> {
  _$CurriculumStateCopyWithImpl(this._value, this._then);

  final CurriculumState _value;
  // ignore: unused_field
  final $Res Function(CurriculumState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$CurriculumStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CurriculumState.initial()';
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
    @required Result loaded(TimeTable timeTable),
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
    Result loaded(TimeTable timeTable),
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

abstract class Initial implements CurriculumState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$CurriculumStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'CurriculumState.loading()';
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
    @required Result loaded(TimeTable timeTable),
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
    Result loaded(TimeTable timeTable),
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

abstract class Loading implements CurriculumState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$CurriculumStateCopyWithImpl<$Res>
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

/// @nodoc
class _$Failed implements Failed {
  const _$Failed({this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'CurriculumState.failed(error: $error)';
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
    @required Result loaded(TimeTable timeTable),
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
    Result loaded(TimeTable timeTable),
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

abstract class Failed implements CurriculumState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({TimeTable timeTable});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$CurriculumStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object timeTable = freezed,
  }) {
    return _then(Loaded(
      timeTable:
          timeTable == freezed ? _value.timeTable : timeTable as TimeTable,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded({this.timeTable});

  @override
  final TimeTable timeTable;

  @override
  String toString() {
    return 'CurriculumState.loaded(timeTable: $timeTable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.timeTable, timeTable) ||
                const DeepCollectionEquality()
                    .equals(other.timeTable, timeTable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timeTable);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(TimeTable timeTable),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(timeTable);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(TimeTable timeTable),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(timeTable);
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

abstract class Loaded implements CurriculumState {
  const factory Loaded({TimeTable timeTable}) = _$Loaded;

  TimeTable get timeTable;
  $LoadedCopyWith<Loaded> get copyWith;
}
