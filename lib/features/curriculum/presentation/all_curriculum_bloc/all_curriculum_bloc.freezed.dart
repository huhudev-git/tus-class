// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'all_curriculum_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AllCurriculumEventTearOff {
  const _$AllCurriculumEventTearOff();

  FetchAllCurriculum fetchAllCurriculum({bool isRefresh}) {
    return FetchAllCurriculum(
      isRefresh: isRefresh,
    );
  }
}

// ignore: unused_element
const $AllCurriculumEvent = _$AllCurriculumEventTearOff();

mixin _$AllCurriculumEvent {
  bool get isRefresh;

  $AllCurriculumEventCopyWith<AllCurriculumEvent> get copyWith;
}

abstract class $AllCurriculumEventCopyWith<$Res> {
  factory $AllCurriculumEventCopyWith(
          AllCurriculumEvent value, $Res Function(AllCurriculumEvent) then) =
      _$AllCurriculumEventCopyWithImpl<$Res>;
  $Res call({bool isRefresh});
}

class _$AllCurriculumEventCopyWithImpl<$Res>
    implements $AllCurriculumEventCopyWith<$Res> {
  _$AllCurriculumEventCopyWithImpl(this._value, this._then);

  final AllCurriculumEvent _value;
  // ignore: unused_field
  final $Res Function(AllCurriculumEvent) _then;

  @override
  $Res call({
    Object isRefresh = freezed,
  }) {
    return _then(_value.copyWith(
      isRefresh: isRefresh == freezed ? _value.isRefresh : isRefresh as bool,
    ));
  }
}

abstract class $FetchAllCurriculumCopyWith<$Res>
    implements $AllCurriculumEventCopyWith<$Res> {
  factory $FetchAllCurriculumCopyWith(
          FetchAllCurriculum value, $Res Function(FetchAllCurriculum) then) =
      _$FetchAllCurriculumCopyWithImpl<$Res>;
  @override
  $Res call({bool isRefresh});
}

class _$FetchAllCurriculumCopyWithImpl<$Res>
    extends _$AllCurriculumEventCopyWithImpl<$Res>
    implements $FetchAllCurriculumCopyWith<$Res> {
  _$FetchAllCurriculumCopyWithImpl(
      FetchAllCurriculum _value, $Res Function(FetchAllCurriculum) _then)
      : super(_value, (v) => _then(v as FetchAllCurriculum));

  @override
  FetchAllCurriculum get _value => super._value as FetchAllCurriculum;

  @override
  $Res call({
    Object isRefresh = freezed,
  }) {
    return _then(FetchAllCurriculum(
      isRefresh: isRefresh == freezed ? _value.isRefresh : isRefresh as bool,
    ));
  }
}

class _$FetchAllCurriculum implements FetchAllCurriculum {
  const _$FetchAllCurriculum({this.isRefresh});

  @override
  final bool isRefresh;

  @override
  String toString() {
    return 'AllCurriculumEvent.fetchAllCurriculum(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchAllCurriculum &&
            (identical(other.isRefresh, isRefresh) ||
                const DeepCollectionEquality()
                    .equals(other.isRefresh, isRefresh)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isRefresh);

  @override
  $FetchAllCurriculumCopyWith<FetchAllCurriculum> get copyWith =>
      _$FetchAllCurriculumCopyWithImpl<FetchAllCurriculum>(this, _$identity);
}

abstract class FetchAllCurriculum implements AllCurriculumEvent {
  const factory FetchAllCurriculum({bool isRefresh}) = _$FetchAllCurriculum;

  @override
  bool get isRefresh;
  @override
  $FetchAllCurriculumCopyWith<FetchAllCurriculum> get copyWith;
}

class _$AllCurriculumStateTearOff {
  const _$AllCurriculumStateTearOff();

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

  Loaded loaded({TimeTable timeTable}) {
    return Loaded(
      timeTable: timeTable,
    );
  }
}

// ignore: unused_element
const $AllCurriculumState = _$AllCurriculumStateTearOff();

mixin _$AllCurriculumState {
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

abstract class $AllCurriculumStateCopyWith<$Res> {
  factory $AllCurriculumStateCopyWith(
          AllCurriculumState value, $Res Function(AllCurriculumState) then) =
      _$AllCurriculumStateCopyWithImpl<$Res>;
}

class _$AllCurriculumStateCopyWithImpl<$Res>
    implements $AllCurriculumStateCopyWith<$Res> {
  _$AllCurriculumStateCopyWithImpl(this._value, this._then);

  final AllCurriculumState _value;
  // ignore: unused_field
  final $Res Function(AllCurriculumState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$AllCurriculumStateCopyWithImpl<$Res>
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
    return 'AllCurriculumState.initial()';
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

abstract class Initial implements AllCurriculumState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$AllCurriculumStateCopyWithImpl<$Res>
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
    return 'AllCurriculumState.loading()';
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

abstract class Loading implements AllCurriculumState {
  const factory Loading() = _$Loading;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

class _$FailedCopyWithImpl<$Res> extends _$AllCurriculumStateCopyWithImpl<$Res>
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
    return 'AllCurriculumState.failed(error: $error)';
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

abstract class Failed implements AllCurriculumState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({TimeTable timeTable});
}

class _$LoadedCopyWithImpl<$Res> extends _$AllCurriculumStateCopyWithImpl<$Res>
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

class _$Loaded implements Loaded {
  const _$Loaded({this.timeTable});

  @override
  final TimeTable timeTable;

  @override
  String toString() {
    return 'AllCurriculumState.loaded(timeTable: $timeTable)';
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

abstract class Loaded implements AllCurriculumState {
  const factory Loaded({TimeTable timeTable}) = _$Loaded;

  TimeTable get timeTable;
  $LoadedCopyWith<Loaded> get copyWith;
}
