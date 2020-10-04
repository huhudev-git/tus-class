// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'grade_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GradeEventTearOff {
  const _$GradeEventTearOff();

// ignore: unused_element
  FetchGrade fetchGrade() {
    return const FetchGrade();
  }
}

/// @nodoc
// ignore: unused_element
const $GradeEvent = _$GradeEventTearOff();

/// @nodoc
mixin _$GradeEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchGrade(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchGrade(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchGrade(FetchGrade value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchGrade(FetchGrade value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GradeEventCopyWith<$Res> {
  factory $GradeEventCopyWith(
          GradeEvent value, $Res Function(GradeEvent) then) =
      _$GradeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GradeEventCopyWithImpl<$Res> implements $GradeEventCopyWith<$Res> {
  _$GradeEventCopyWithImpl(this._value, this._then);

  final GradeEvent _value;
  // ignore: unused_field
  final $Res Function(GradeEvent) _then;
}

/// @nodoc
abstract class $FetchGradeCopyWith<$Res> {
  factory $FetchGradeCopyWith(
          FetchGrade value, $Res Function(FetchGrade) then) =
      _$FetchGradeCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchGradeCopyWithImpl<$Res> extends _$GradeEventCopyWithImpl<$Res>
    implements $FetchGradeCopyWith<$Res> {
  _$FetchGradeCopyWithImpl(FetchGrade _value, $Res Function(FetchGrade) _then)
      : super(_value, (v) => _then(v as FetchGrade));

  @override
  FetchGrade get _value => super._value as FetchGrade;
}

/// @nodoc
class _$FetchGrade implements FetchGrade {
  const _$FetchGrade();

  @override
  String toString() {
    return 'GradeEvent.fetchGrade()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchGrade);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchGrade(),
  }) {
    assert(fetchGrade != null);
    return fetchGrade();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchGrade(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchGrade != null) {
      return fetchGrade();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchGrade(FetchGrade value),
  }) {
    assert(fetchGrade != null);
    return fetchGrade(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchGrade(FetchGrade value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchGrade != null) {
      return fetchGrade(this);
    }
    return orElse();
  }
}

abstract class FetchGrade implements GradeEvent {
  const factory FetchGrade() = _$FetchGrade;
}

/// @nodoc
class _$GradeStateTearOff {
  const _$GradeStateTearOff();

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
  Loaded loaded({List<Grade> grades}) {
    return Loaded(
      grades: grades,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GradeState = _$GradeStateTearOff();

/// @nodoc
mixin _$GradeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(List<Grade> grades),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<Grade> grades),
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
abstract class $GradeStateCopyWith<$Res> {
  factory $GradeStateCopyWith(
          GradeState value, $Res Function(GradeState) then) =
      _$GradeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GradeStateCopyWithImpl<$Res> implements $GradeStateCopyWith<$Res> {
  _$GradeStateCopyWithImpl(this._value, this._then);

  final GradeState _value;
  // ignore: unused_field
  final $Res Function(GradeState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$GradeStateCopyWithImpl<$Res>
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
    return 'GradeState.initial()';
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
    @required Result loaded(List<Grade> grades),
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
    Result loaded(List<Grade> grades),
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

abstract class Initial implements GradeState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$GradeStateCopyWithImpl<$Res>
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
    return 'GradeState.loading()';
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
    @required Result loaded(List<Grade> grades),
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
    Result loaded(List<Grade> grades),
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

abstract class Loading implements GradeState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$GradeStateCopyWithImpl<$Res>
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
    return 'GradeState.failed(error: $error)';
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
    @required Result loaded(List<Grade> grades),
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
    Result loaded(List<Grade> grades),
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

abstract class Failed implements GradeState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<Grade> grades});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$GradeStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object grades = freezed,
  }) {
    return _then(Loaded(
      grades: grades == freezed ? _value.grades : grades as List<Grade>,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded({this.grades});

  @override
  final List<Grade> grades;

  @override
  String toString() {
    return 'GradeState.loaded(grades: $grades)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.grades, grades) ||
                const DeepCollectionEquality().equals(other.grades, grades)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(grades);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(List<Grade> grades),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(grades);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<Grade> grades),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(grades);
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

abstract class Loaded implements GradeState {
  const factory Loaded({List<Grade> grades}) = _$Loaded;

  List<Grade> get grades;
  $LoadedCopyWith<Loaded> get copyWith;
}
