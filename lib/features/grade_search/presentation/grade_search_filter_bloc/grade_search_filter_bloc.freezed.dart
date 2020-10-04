// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'grade_search_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GradeSearchFilterEventTearOff {
  const _$GradeSearchFilterEventTearOff();

// ignore: unused_element
  FetchGradeSearchFilter fetchGradeSearchFilter() {
    return const FetchGradeSearchFilter();
  }
}

/// @nodoc
// ignore: unused_element
const $GradeSearchFilterEvent = _$GradeSearchFilterEventTearOff();

/// @nodoc
mixin _$GradeSearchFilterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchGradeSearchFilter(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchGradeSearchFilter(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchGradeSearchFilter(FetchGradeSearchFilter value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchGradeSearchFilter(FetchGradeSearchFilter value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GradeSearchFilterEventCopyWith<$Res> {
  factory $GradeSearchFilterEventCopyWith(GradeSearchFilterEvent value,
          $Res Function(GradeSearchFilterEvent) then) =
      _$GradeSearchFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GradeSearchFilterEventCopyWithImpl<$Res>
    implements $GradeSearchFilterEventCopyWith<$Res> {
  _$GradeSearchFilterEventCopyWithImpl(this._value, this._then);

  final GradeSearchFilterEvent _value;
  // ignore: unused_field
  final $Res Function(GradeSearchFilterEvent) _then;
}

/// @nodoc
abstract class $FetchGradeSearchFilterCopyWith<$Res> {
  factory $FetchGradeSearchFilterCopyWith(FetchGradeSearchFilter value,
          $Res Function(FetchGradeSearchFilter) then) =
      _$FetchGradeSearchFilterCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchGradeSearchFilterCopyWithImpl<$Res>
    extends _$GradeSearchFilterEventCopyWithImpl<$Res>
    implements $FetchGradeSearchFilterCopyWith<$Res> {
  _$FetchGradeSearchFilterCopyWithImpl(FetchGradeSearchFilter _value,
      $Res Function(FetchGradeSearchFilter) _then)
      : super(_value, (v) => _then(v as FetchGradeSearchFilter));

  @override
  FetchGradeSearchFilter get _value => super._value as FetchGradeSearchFilter;
}

/// @nodoc
class _$FetchGradeSearchFilter implements FetchGradeSearchFilter {
  const _$FetchGradeSearchFilter();

  @override
  String toString() {
    return 'GradeSearchFilterEvent.fetchGradeSearchFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchGradeSearchFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchGradeSearchFilter(),
  }) {
    assert(fetchGradeSearchFilter != null);
    return fetchGradeSearchFilter();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchGradeSearchFilter(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchGradeSearchFilter != null) {
      return fetchGradeSearchFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchGradeSearchFilter(FetchGradeSearchFilter value),
  }) {
    assert(fetchGradeSearchFilter != null);
    return fetchGradeSearchFilter(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchGradeSearchFilter(FetchGradeSearchFilter value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchGradeSearchFilter != null) {
      return fetchGradeSearchFilter(this);
    }
    return orElse();
  }
}

abstract class FetchGradeSearchFilter implements GradeSearchFilterEvent {
  const factory FetchGradeSearchFilter() = _$FetchGradeSearchFilter;
}

/// @nodoc
class _$GradeSearchFilterStateTearOff {
  const _$GradeSearchFilterStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded({GradeFilter filter}) {
    return Loaded(
      filter: filter,
    );
  }

// ignore: unused_element
  Failed failed({Failure error}) {
    return Failed(
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GradeSearchFilterState = _$GradeSearchFilterStateTearOff();

/// @nodoc
mixin _$GradeSearchFilterState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(GradeFilter filter),
    @required Result failed(Failure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(GradeFilter filter),
    Result failed(Failure error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GradeSearchFilterStateCopyWith<$Res> {
  factory $GradeSearchFilterStateCopyWith(GradeSearchFilterState value,
          $Res Function(GradeSearchFilterState) then) =
      _$GradeSearchFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GradeSearchFilterStateCopyWithImpl<$Res>
    implements $GradeSearchFilterStateCopyWith<$Res> {
  _$GradeSearchFilterStateCopyWithImpl(this._value, this._then);

  final GradeSearchFilterState _value;
  // ignore: unused_field
  final $Res Function(GradeSearchFilterState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$GradeSearchFilterStateCopyWithImpl<$Res>
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
    return 'GradeSearchFilterState.initial()';
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
    @required Result loaded(GradeFilter filter),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(GradeFilter filter),
    Result failed(Failure error),
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
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GradeSearchFilterState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$GradeSearchFilterStateCopyWithImpl<$Res>
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
    return 'GradeSearchFilterState.loading()';
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
    @required Result loaded(GradeFilter filter),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(GradeFilter filter),
    Result failed(Failure error),
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
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GradeSearchFilterState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({GradeFilter filter});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    extends _$GradeSearchFilterStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(Loaded(
      filter: filter == freezed ? _value.filter : filter as GradeFilter,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded({this.filter});

  @override
  final GradeFilter filter;

  @override
  String toString() {
    return 'GradeSearchFilterState.loaded(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(GradeFilter filter),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(filter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(GradeFilter filter),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements GradeSearchFilterState {
  const factory Loaded({GradeFilter filter}) = _$Loaded;

  GradeFilter get filter;
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

/// @nodoc
class _$FailedCopyWithImpl<$Res>
    extends _$GradeSearchFilterStateCopyWithImpl<$Res>
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
    return 'GradeSearchFilterState.failed(error: $error)';
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
    @required Result loaded(GradeFilter filter),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return failed(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(GradeFilter filter),
    Result failed(Failure error),
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
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements GradeSearchFilterState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}
