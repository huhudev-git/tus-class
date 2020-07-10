// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'about_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AboutEventTearOff {
  const _$AboutEventTearOff();

  Init init() {
    return const Init();
  }
}

// ignore: unused_element
const $AboutEvent = _$AboutEventTearOff();

mixin _$AboutEvent {}

abstract class $AboutEventCopyWith<$Res> {
  factory $AboutEventCopyWith(
          AboutEvent value, $Res Function(AboutEvent) then) =
      _$AboutEventCopyWithImpl<$Res>;
}

class _$AboutEventCopyWithImpl<$Res> implements $AboutEventCopyWith<$Res> {
  _$AboutEventCopyWithImpl(this._value, this._then);

  final AboutEvent _value;
  // ignore: unused_field
  final $Res Function(AboutEvent) _then;
}

abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

class _$InitCopyWithImpl<$Res> extends _$AboutEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'AboutEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class Init implements AboutEvent {
  const factory Init() = _$Init;
}

class _$AboutStateTearOff {
  const _$AboutStateTearOff();

  _AboutState call({About about, Failure error}) {
    return _AboutState(
      about: about,
      error: error,
    );
  }
}

// ignore: unused_element
const $AboutState = _$AboutStateTearOff();

mixin _$AboutState {
  About get about;
  Failure get error;

  $AboutStateCopyWith<AboutState> get copyWith;
}

abstract class $AboutStateCopyWith<$Res> {
  factory $AboutStateCopyWith(
          AboutState value, $Res Function(AboutState) then) =
      _$AboutStateCopyWithImpl<$Res>;
  $Res call({About about, Failure error});
}

class _$AboutStateCopyWithImpl<$Res> implements $AboutStateCopyWith<$Res> {
  _$AboutStateCopyWithImpl(this._value, this._then);

  final AboutState _value;
  // ignore: unused_field
  final $Res Function(AboutState) _then;

  @override
  $Res call({
    Object about = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      about: about == freezed ? _value.about : about as About,
      error: error == freezed ? _value.error : error as Failure,
    ));
  }
}

abstract class _$AboutStateCopyWith<$Res> implements $AboutStateCopyWith<$Res> {
  factory _$AboutStateCopyWith(
          _AboutState value, $Res Function(_AboutState) then) =
      __$AboutStateCopyWithImpl<$Res>;
  @override
  $Res call({About about, Failure error});
}

class __$AboutStateCopyWithImpl<$Res> extends _$AboutStateCopyWithImpl<$Res>
    implements _$AboutStateCopyWith<$Res> {
  __$AboutStateCopyWithImpl(
      _AboutState _value, $Res Function(_AboutState) _then)
      : super(_value, (v) => _then(v as _AboutState));

  @override
  _AboutState get _value => super._value as _AboutState;

  @override
  $Res call({
    Object about = freezed,
    Object error = freezed,
  }) {
    return _then(_AboutState(
      about: about == freezed ? _value.about : about as About,
      error: error == freezed ? _value.error : error as Failure,
    ));
  }
}

class _$_AboutState implements _AboutState {
  const _$_AboutState({this.about, this.error});

  @override
  final About about;
  @override
  final Failure error;

  @override
  String toString() {
    return 'AboutState(about: $about, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AboutState &&
            (identical(other.about, about) ||
                const DeepCollectionEquality().equals(other.about, about)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(about) ^
      const DeepCollectionEquality().hash(error);

  @override
  _$AboutStateCopyWith<_AboutState> get copyWith =>
      __$AboutStateCopyWithImpl<_AboutState>(this, _$identity);
}

abstract class _AboutState implements AboutState {
  const factory _AboutState({About about, Failure error}) = _$_AboutState;

  @override
  About get about;
  @override
  Failure get error;
  @override
  _$AboutStateCopyWith<_AboutState> get copyWith;
}
