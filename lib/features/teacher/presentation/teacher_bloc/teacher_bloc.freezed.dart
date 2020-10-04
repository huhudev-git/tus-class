// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'teacher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TeacherEventTearOff {
  const _$TeacherEventTearOff();

// ignore: unused_element
  FetchTeacher fetchTeacher({String teacherId, String code, int year}) {
    return FetchTeacher(
      teacherId: teacherId,
      code: code,
      year: year,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TeacherEvent = _$TeacherEventTearOff();

/// @nodoc
mixin _$TeacherEvent {
  String get teacherId;
  String get code;
  int get year;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchTeacher(String teacherId, String code, int year),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchTeacher(String teacherId, String code, int year),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchTeacher(FetchTeacher value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchTeacher(FetchTeacher value),
    @required Result orElse(),
  });

  $TeacherEventCopyWith<TeacherEvent> get copyWith;
}

/// @nodoc
abstract class $TeacherEventCopyWith<$Res> {
  factory $TeacherEventCopyWith(
          TeacherEvent value, $Res Function(TeacherEvent) then) =
      _$TeacherEventCopyWithImpl<$Res>;
  $Res call({String teacherId, String code, int year});
}

/// @nodoc
class _$TeacherEventCopyWithImpl<$Res> implements $TeacherEventCopyWith<$Res> {
  _$TeacherEventCopyWithImpl(this._value, this._then);

  final TeacherEvent _value;
  // ignore: unused_field
  final $Res Function(TeacherEvent) _then;

  @override
  $Res call({
    Object teacherId = freezed,
    Object code = freezed,
    Object year = freezed,
  }) {
    return _then(_value.copyWith(
      teacherId: teacherId == freezed ? _value.teacherId : teacherId as String,
      code: code == freezed ? _value.code : code as String,
      year: year == freezed ? _value.year : year as int,
    ));
  }
}

/// @nodoc
abstract class $FetchTeacherCopyWith<$Res>
    implements $TeacherEventCopyWith<$Res> {
  factory $FetchTeacherCopyWith(
          FetchTeacher value, $Res Function(FetchTeacher) then) =
      _$FetchTeacherCopyWithImpl<$Res>;
  @override
  $Res call({String teacherId, String code, int year});
}

/// @nodoc
class _$FetchTeacherCopyWithImpl<$Res> extends _$TeacherEventCopyWithImpl<$Res>
    implements $FetchTeacherCopyWith<$Res> {
  _$FetchTeacherCopyWithImpl(
      FetchTeacher _value, $Res Function(FetchTeacher) _then)
      : super(_value, (v) => _then(v as FetchTeacher));

  @override
  FetchTeacher get _value => super._value as FetchTeacher;

  @override
  $Res call({
    Object teacherId = freezed,
    Object code = freezed,
    Object year = freezed,
  }) {
    return _then(FetchTeacher(
      teacherId: teacherId == freezed ? _value.teacherId : teacherId as String,
      code: code == freezed ? _value.code : code as String,
      year: year == freezed ? _value.year : year as int,
    ));
  }
}

/// @nodoc
class _$FetchTeacher implements FetchTeacher {
  const _$FetchTeacher({this.teacherId, this.code, this.year});

  @override
  final String teacherId;
  @override
  final String code;
  @override
  final int year;

  @override
  String toString() {
    return 'TeacherEvent.fetchTeacher(teacherId: $teacherId, code: $code, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchTeacher &&
            (identical(other.teacherId, teacherId) ||
                const DeepCollectionEquality()
                    .equals(other.teacherId, teacherId)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(teacherId) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(year);

  @override
  $FetchTeacherCopyWith<FetchTeacher> get copyWith =>
      _$FetchTeacherCopyWithImpl<FetchTeacher>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchTeacher(String teacherId, String code, int year),
  }) {
    assert(fetchTeacher != null);
    return fetchTeacher(teacherId, code, year);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchTeacher(String teacherId, String code, int year),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchTeacher != null) {
      return fetchTeacher(teacherId, code, year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchTeacher(FetchTeacher value),
  }) {
    assert(fetchTeacher != null);
    return fetchTeacher(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchTeacher(FetchTeacher value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchTeacher != null) {
      return fetchTeacher(this);
    }
    return orElse();
  }
}

abstract class FetchTeacher implements TeacherEvent {
  const factory FetchTeacher({String teacherId, String code, int year}) =
      _$FetchTeacher;

  @override
  String get teacherId;
  @override
  String get code;
  @override
  int get year;
  @override
  $FetchTeacherCopyWith<FetchTeacher> get copyWith;
}

/// @nodoc
class _$TeacherStateTearOff {
  const _$TeacherStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded({Teacher teacher}) {
    return Loaded(
      teacher: teacher,
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
const $TeacherState = _$TeacherStateTearOff();

/// @nodoc
mixin _$TeacherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(Teacher teacher),
    @required Result failed(Failure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(Teacher teacher),
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
abstract class $TeacherStateCopyWith<$Res> {
  factory $TeacherStateCopyWith(
          TeacherState value, $Res Function(TeacherState) then) =
      _$TeacherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TeacherStateCopyWithImpl<$Res> implements $TeacherStateCopyWith<$Res> {
  _$TeacherStateCopyWithImpl(this._value, this._then);

  final TeacherState _value;
  // ignore: unused_field
  final $Res Function(TeacherState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$TeacherStateCopyWithImpl<$Res>
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
    return 'TeacherState.initial()';
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
    @required Result loaded(Teacher teacher),
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
    Result loaded(Teacher teacher),
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

abstract class Initial implements TeacherState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$TeacherStateCopyWithImpl<$Res>
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
    return 'TeacherState.loading()';
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
    @required Result loaded(Teacher teacher),
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
    Result loaded(Teacher teacher),
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

abstract class Loading implements TeacherState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({Teacher teacher});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$TeacherStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object teacher = freezed,
  }) {
    return _then(Loaded(
      teacher: teacher == freezed ? _value.teacher : teacher as Teacher,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded({this.teacher});

  @override
  final Teacher teacher;

  @override
  String toString() {
    return 'TeacherState.loaded(teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.teacher, teacher) ||
                const DeepCollectionEquality().equals(other.teacher, teacher)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(teacher);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(Teacher teacher),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(teacher);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(Teacher teacher),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(teacher);
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

abstract class Loaded implements TeacherState {
  const factory Loaded({Teacher teacher}) = _$Loaded;

  Teacher get teacher;
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$TeacherStateCopyWithImpl<$Res>
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
    return 'TeacherState.failed(error: $error)';
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
    @required Result loaded(Teacher teacher),
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
    Result loaded(Teacher teacher),
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

abstract class Failed implements TeacherState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}
