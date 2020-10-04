// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'version_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VersionEventTearOff {
  const _$VersionEventTearOff();

// ignore: unused_element
  Check check() {
    return const Check();
  }
}

/// @nodoc
// ignore: unused_element
const $VersionEvent = _$VersionEventTearOff();

/// @nodoc
mixin _$VersionEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result check(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result check(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result check(Check value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result check(Check value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $VersionEventCopyWith<$Res> {
  factory $VersionEventCopyWith(
          VersionEvent value, $Res Function(VersionEvent) then) =
      _$VersionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VersionEventCopyWithImpl<$Res> implements $VersionEventCopyWith<$Res> {
  _$VersionEventCopyWithImpl(this._value, this._then);

  final VersionEvent _value;
  // ignore: unused_field
  final $Res Function(VersionEvent) _then;
}

/// @nodoc
abstract class $CheckCopyWith<$Res> {
  factory $CheckCopyWith(Check value, $Res Function(Check) then) =
      _$CheckCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckCopyWithImpl<$Res> extends _$VersionEventCopyWithImpl<$Res>
    implements $CheckCopyWith<$Res> {
  _$CheckCopyWithImpl(Check _value, $Res Function(Check) _then)
      : super(_value, (v) => _then(v as Check));

  @override
  Check get _value => super._value as Check;
}

/// @nodoc
class _$Check implements Check {
  const _$Check();

  @override
  String toString() {
    return 'VersionEvent.check()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Check);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result check(),
  }) {
    assert(check != null);
    return check();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result check(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result check(Check value),
  }) {
    assert(check != null);
    return check(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result check(Check value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class Check implements VersionEvent {
  const factory Check() = _$Check;
}

/// @nodoc
class _$VersionStateTearOff {
  const _$VersionStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded({bool hasUpdate}) {
    return Loaded(
      hasUpdate: hasUpdate,
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
const $VersionState = _$VersionStateTearOff();

/// @nodoc
mixin _$VersionState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(bool hasUpdate),
    @required Result failed(Failure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(bool hasUpdate),
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
abstract class $VersionStateCopyWith<$Res> {
  factory $VersionStateCopyWith(
          VersionState value, $Res Function(VersionState) then) =
      _$VersionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VersionStateCopyWithImpl<$Res> implements $VersionStateCopyWith<$Res> {
  _$VersionStateCopyWithImpl(this._value, this._then);

  final VersionState _value;
  // ignore: unused_field
  final $Res Function(VersionState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
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
    return 'VersionState.initial()';
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
    @required Result loaded(bool hasUpdate),
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
    Result loaded(bool hasUpdate),
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

abstract class Initial implements VersionState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
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
    return 'VersionState.loading()';
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
    @required Result loaded(bool hasUpdate),
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
    Result loaded(bool hasUpdate),
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

abstract class Loading implements VersionState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({bool hasUpdate});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object hasUpdate = freezed,
  }) {
    return _then(Loaded(
      hasUpdate: hasUpdate == freezed ? _value.hasUpdate : hasUpdate as bool,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded({this.hasUpdate});

  @override
  final bool hasUpdate;

  @override
  String toString() {
    return 'VersionState.loaded(hasUpdate: $hasUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.hasUpdate, hasUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.hasUpdate, hasUpdate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(hasUpdate);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(bool hasUpdate),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(hasUpdate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(bool hasUpdate),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(hasUpdate);
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

abstract class Loaded implements VersionState {
  const factory Loaded({bool hasUpdate}) = _$Loaded;

  bool get hasUpdate;
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
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
    return 'VersionState.failed(error: $error)';
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
    @required Result loaded(bool hasUpdate),
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
    Result loaded(bool hasUpdate),
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

abstract class Failed implements VersionState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}
