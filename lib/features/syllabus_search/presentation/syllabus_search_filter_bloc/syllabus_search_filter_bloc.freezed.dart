// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'syllabus_search_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SyllabusSearchFilterEventTearOff {
  const _$SyllabusSearchFilterEventTearOff();

// ignore: unused_element
  FetchFilter fetchFilter() {
    return const FetchFilter();
  }
}

/// @nodoc
// ignore: unused_element
const $SyllabusSearchFilterEvent = _$SyllabusSearchFilterEventTearOff();

/// @nodoc
mixin _$SyllabusSearchFilterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchFilter(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchFilter(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchFilter(FetchFilter value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchFilter(FetchFilter value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SyllabusSearchFilterEventCopyWith<$Res> {
  factory $SyllabusSearchFilterEventCopyWith(SyllabusSearchFilterEvent value,
          $Res Function(SyllabusSearchFilterEvent) then) =
      _$SyllabusSearchFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SyllabusSearchFilterEventCopyWithImpl<$Res>
    implements $SyllabusSearchFilterEventCopyWith<$Res> {
  _$SyllabusSearchFilterEventCopyWithImpl(this._value, this._then);

  final SyllabusSearchFilterEvent _value;
  // ignore: unused_field
  final $Res Function(SyllabusSearchFilterEvent) _then;
}

/// @nodoc
abstract class $FetchFilterCopyWith<$Res> {
  factory $FetchFilterCopyWith(
          FetchFilter value, $Res Function(FetchFilter) then) =
      _$FetchFilterCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchFilterCopyWithImpl<$Res>
    extends _$SyllabusSearchFilterEventCopyWithImpl<$Res>
    implements $FetchFilterCopyWith<$Res> {
  _$FetchFilterCopyWithImpl(
      FetchFilter _value, $Res Function(FetchFilter) _then)
      : super(_value, (v) => _then(v as FetchFilter));

  @override
  FetchFilter get _value => super._value as FetchFilter;
}

/// @nodoc
class _$FetchFilter implements FetchFilter {
  const _$FetchFilter();

  @override
  String toString() {
    return 'SyllabusSearchFilterEvent.fetchFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchFilter(),
  }) {
    assert(fetchFilter != null);
    return fetchFilter();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchFilter(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFilter != null) {
      return fetchFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchFilter(FetchFilter value),
  }) {
    assert(fetchFilter != null);
    return fetchFilter(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchFilter(FetchFilter value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchFilter != null) {
      return fetchFilter(this);
    }
    return orElse();
  }
}

abstract class FetchFilter implements SyllabusSearchFilterEvent {
  const factory FetchFilter() = _$FetchFilter;
}

/// @nodoc
class _$SyllabusSearchFilterStateTearOff {
  const _$SyllabusSearchFilterStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded({SyllabusFilter filter}) {
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
const $SyllabusSearchFilterState = _$SyllabusSearchFilterStateTearOff();

/// @nodoc
mixin _$SyllabusSearchFilterState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(SyllabusFilter filter),
    @required Result failed(Failure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(SyllabusFilter filter),
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
abstract class $SyllabusSearchFilterStateCopyWith<$Res> {
  factory $SyllabusSearchFilterStateCopyWith(SyllabusSearchFilterState value,
          $Res Function(SyllabusSearchFilterState) then) =
      _$SyllabusSearchFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SyllabusSearchFilterStateCopyWithImpl<$Res>
    implements $SyllabusSearchFilterStateCopyWith<$Res> {
  _$SyllabusSearchFilterStateCopyWithImpl(this._value, this._then);

  final SyllabusSearchFilterState _value;
  // ignore: unused_field
  final $Res Function(SyllabusSearchFilterState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$SyllabusSearchFilterStateCopyWithImpl<$Res>
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
    return 'SyllabusSearchFilterState.initial()';
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
    @required Result loaded(SyllabusFilter filter),
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
    Result loaded(SyllabusFilter filter),
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

abstract class Initial implements SyllabusSearchFilterState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$SyllabusSearchFilterStateCopyWithImpl<$Res>
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
    return 'SyllabusSearchFilterState.loading()';
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
    @required Result loaded(SyllabusFilter filter),
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
    Result loaded(SyllabusFilter filter),
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

abstract class Loading implements SyllabusSearchFilterState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({SyllabusFilter filter});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    extends _$SyllabusSearchFilterStateCopyWithImpl<$Res>
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
      filter: filter == freezed ? _value.filter : filter as SyllabusFilter,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded({this.filter});

  @override
  final SyllabusFilter filter;

  @override
  String toString() {
    return 'SyllabusSearchFilterState.loaded(filter: $filter)';
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
    @required Result loaded(SyllabusFilter filter),
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
    Result loaded(SyllabusFilter filter),
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

abstract class Loaded implements SyllabusSearchFilterState {
  const factory Loaded({SyllabusFilter filter}) = _$Loaded;

  SyllabusFilter get filter;
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
    extends _$SyllabusSearchFilterStateCopyWithImpl<$Res>
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
    return 'SyllabusSearchFilterState.failed(error: $error)';
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
    @required Result loaded(SyllabusFilter filter),
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
    Result loaded(SyllabusFilter filter),
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

abstract class Failed implements SyllabusSearchFilterState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}
