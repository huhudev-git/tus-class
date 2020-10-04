// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  AppStarted appStart() {
    return const AppStarted();
  }

// ignore: unused_element
  LoggedIn loggedIn() {
    return const LoggedIn();
  }

// ignore: unused_element
  LoggedOut loggedOut() {
    return const LoggedOut();
  }

// ignore: unused_element
  PersistToken persistToken({String username, String password}) {
    return PersistToken(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  DeleteToken deleteToken() {
    return const DeleteToken();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStart(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result persistToken(String username, String password),
    @required Result deleteToken(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStart(),
    Result loggedIn(),
    Result loggedOut(),
    Result persistToken(String username, String password),
    Result deleteToken(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStart(AppStarted value),
    @required Result loggedIn(LoggedIn value),
    @required Result loggedOut(LoggedOut value),
    @required Result persistToken(PersistToken value),
    @required Result deleteToken(DeleteToken value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStart(AppStarted value),
    Result loggedIn(LoggedIn value),
    Result loggedOut(LoggedOut value),
    Result persistToken(PersistToken value),
    Result deleteToken(DeleteToken value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AppStartedCopyWith<$Res> {
  factory $AppStartedCopyWith(
          AppStarted value, $Res Function(AppStarted) then) =
      _$AppStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AppStartedCopyWith<$Res> {
  _$AppStartedCopyWithImpl(AppStarted _value, $Res Function(AppStarted) _then)
      : super(_value, (v) => _then(v as AppStarted));

  @override
  AppStarted get _value => super._value as AppStarted;
}

/// @nodoc
class _$AppStarted implements AppStarted {
  const _$AppStarted();

  @override
  String toString() {
    return 'AuthEvent.appStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStart(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result persistToken(String username, String password),
    @required Result deleteToken(),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return appStart();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStart(),
    Result loggedIn(),
    Result loggedOut(),
    Result persistToken(String username, String password),
    Result deleteToken(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStart != null) {
      return appStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStart(AppStarted value),
    @required Result loggedIn(LoggedIn value),
    @required Result loggedOut(LoggedOut value),
    @required Result persistToken(PersistToken value),
    @required Result deleteToken(DeleteToken value),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return appStart(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStart(AppStarted value),
    Result loggedIn(LoggedIn value),
    Result loggedOut(LoggedOut value),
    Result persistToken(PersistToken value),
    Result deleteToken(DeleteToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStart != null) {
      return appStart(this);
    }
    return orElse();
  }
}

abstract class AppStarted implements AuthEvent {
  const factory AppStarted() = _$AppStarted;
}

/// @nodoc
abstract class $LoggedInCopyWith<$Res> {
  factory $LoggedInCopyWith(LoggedIn value, $Res Function(LoggedIn) then) =
      _$LoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LoggedInCopyWith<$Res> {
  _$LoggedInCopyWithImpl(LoggedIn _value, $Res Function(LoggedIn) _then)
      : super(_value, (v) => _then(v as LoggedIn));

  @override
  LoggedIn get _value => super._value as LoggedIn;
}

/// @nodoc
class _$LoggedIn implements LoggedIn {
  const _$LoggedIn();

  @override
  String toString() {
    return 'AuthEvent.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStart(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result persistToken(String username, String password),
    @required Result deleteToken(),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStart(),
    Result loggedIn(),
    Result loggedOut(),
    Result persistToken(String username, String password),
    Result deleteToken(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStart(AppStarted value),
    @required Result loggedIn(LoggedIn value),
    @required Result loggedOut(LoggedOut value),
    @required Result persistToken(PersistToken value),
    @required Result deleteToken(DeleteToken value),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStart(AppStarted value),
    Result loggedIn(LoggedIn value),
    Result loggedOut(LoggedOut value),
    Result persistToken(PersistToken value),
    Result deleteToken(DeleteToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements AuthEvent {
  const factory LoggedIn() = _$LoggedIn;
}

/// @nodoc
abstract class $LoggedOutCopyWith<$Res> {
  factory $LoggedOutCopyWith(LoggedOut value, $Res Function(LoggedOut) then) =
      _$LoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LoggedOutCopyWith<$Res> {
  _$LoggedOutCopyWithImpl(LoggedOut _value, $Res Function(LoggedOut) _then)
      : super(_value, (v) => _then(v as LoggedOut));

  @override
  LoggedOut get _value => super._value as LoggedOut;
}

/// @nodoc
class _$LoggedOut implements LoggedOut {
  const _$LoggedOut();

  @override
  String toString() {
    return 'AuthEvent.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStart(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result persistToken(String username, String password),
    @required Result deleteToken(),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStart(),
    Result loggedIn(),
    Result loggedOut(),
    Result persistToken(String username, String password),
    Result deleteToken(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStart(AppStarted value),
    @required Result loggedIn(LoggedIn value),
    @required Result loggedOut(LoggedOut value),
    @required Result persistToken(PersistToken value),
    @required Result deleteToken(DeleteToken value),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStart(AppStarted value),
    Result loggedIn(LoggedIn value),
    Result loggedOut(LoggedOut value),
    Result persistToken(PersistToken value),
    Result deleteToken(DeleteToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements AuthEvent {
  const factory LoggedOut() = _$LoggedOut;
}

/// @nodoc
abstract class $PersistTokenCopyWith<$Res> {
  factory $PersistTokenCopyWith(
          PersistToken value, $Res Function(PersistToken) then) =
      _$PersistTokenCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$PersistTokenCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $PersistTokenCopyWith<$Res> {
  _$PersistTokenCopyWithImpl(
      PersistToken _value, $Res Function(PersistToken) _then)
      : super(_value, (v) => _then(v as PersistToken));

  @override
  PersistToken get _value => super._value as PersistToken;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(PersistToken(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PersistToken implements PersistToken {
  const _$PersistToken({this.username, this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.persistToken(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PersistToken &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @override
  $PersistTokenCopyWith<PersistToken> get copyWith =>
      _$PersistTokenCopyWithImpl<PersistToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStart(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result persistToken(String username, String password),
    @required Result deleteToken(),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return persistToken(username, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStart(),
    Result loggedIn(),
    Result loggedOut(),
    Result persistToken(String username, String password),
    Result deleteToken(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (persistToken != null) {
      return persistToken(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStart(AppStarted value),
    @required Result loggedIn(LoggedIn value),
    @required Result loggedOut(LoggedOut value),
    @required Result persistToken(PersistToken value),
    @required Result deleteToken(DeleteToken value),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return persistToken(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStart(AppStarted value),
    Result loggedIn(LoggedIn value),
    Result loggedOut(LoggedOut value),
    Result persistToken(PersistToken value),
    Result deleteToken(DeleteToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (persistToken != null) {
      return persistToken(this);
    }
    return orElse();
  }
}

abstract class PersistToken implements AuthEvent {
  const factory PersistToken({String username, String password}) =
      _$PersistToken;

  String get username;
  String get password;
  $PersistTokenCopyWith<PersistToken> get copyWith;
}

/// @nodoc
abstract class $DeleteTokenCopyWith<$Res> {
  factory $DeleteTokenCopyWith(
          DeleteToken value, $Res Function(DeleteToken) then) =
      _$DeleteTokenCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteTokenCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $DeleteTokenCopyWith<$Res> {
  _$DeleteTokenCopyWithImpl(
      DeleteToken _value, $Res Function(DeleteToken) _then)
      : super(_value, (v) => _then(v as DeleteToken));

  @override
  DeleteToken get _value => super._value as DeleteToken;
}

/// @nodoc
class _$DeleteToken implements DeleteToken {
  const _$DeleteToken();

  @override
  String toString() {
    return 'AuthEvent.deleteToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStart(),
    @required Result loggedIn(),
    @required Result loggedOut(),
    @required Result persistToken(String username, String password),
    @required Result deleteToken(),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return deleteToken();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStart(),
    Result loggedIn(),
    Result loggedOut(),
    Result persistToken(String username, String password),
    Result deleteToken(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteToken != null) {
      return deleteToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStart(AppStarted value),
    @required Result loggedIn(LoggedIn value),
    @required Result loggedOut(LoggedOut value),
    @required Result persistToken(PersistToken value),
    @required Result deleteToken(DeleteToken value),
  }) {
    assert(appStart != null);
    assert(loggedIn != null);
    assert(loggedOut != null);
    assert(persistToken != null);
    assert(deleteToken != null);
    return deleteToken(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStart(AppStarted value),
    Result loggedIn(LoggedIn value),
    Result loggedOut(LoggedOut value),
    Result persistToken(PersistToken value),
    Result deleteToken(DeleteToken value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteToken != null) {
      return deleteToken(this);
    }
    return orElse();
  }
}

abstract class DeleteToken implements AuthEvent {
  const factory DeleteToken() = _$DeleteToken;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Authed authed() {
    return const Authed();
  }

// ignore: unused_element
  Unauthed unauthed() {
    return const Unauthed();
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
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authed(),
    @required Result unauthed(),
    @required Result failed(Failure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authed(),
    Result unauthed(),
    Result failed(Failure error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authed(Authed value),
    @required Result unauthed(Unauthed value),
    @required Result failed(Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authed(Authed value),
    Result unauthed(Unauthed value),
    Result failed(Failed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    @required Result authed(),
    @required Result unauthed(),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unauthed != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authed(),
    Result unauthed(),
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
    @required Result authed(Authed value),
    @required Result unauthed(Unauthed value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unauthed != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authed(Authed value),
    Result unauthed(Unauthed value),
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

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthedCopyWith<$Res> {
  factory $AuthedCopyWith(Authed value, $Res Function(Authed) then) =
      _$AuthedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthedCopyWith<$Res> {
  _$AuthedCopyWithImpl(Authed _value, $Res Function(Authed) _then)
      : super(_value, (v) => _then(v as Authed));

  @override
  Authed get _value => super._value as Authed;
}

/// @nodoc
class _$Authed implements Authed {
  const _$Authed();

  @override
  String toString() {
    return 'AuthState.authed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authed(),
    @required Result unauthed(),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unauthed != null);
    assert(failed != null);
    return authed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authed(),
    Result unauthed(),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authed != null) {
      return authed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authed(Authed value),
    @required Result unauthed(Unauthed value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unauthed != null);
    assert(failed != null);
    return authed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authed(Authed value),
    Result unauthed(Unauthed value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authed != null) {
      return authed(this);
    }
    return orElse();
  }
}

abstract class Authed implements AuthState {
  const factory Authed() = _$Authed;
}

/// @nodoc
abstract class $UnauthedCopyWith<$Res> {
  factory $UnauthedCopyWith(Unauthed value, $Res Function(Unauthed) then) =
      _$UnauthedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthedCopyWith<$Res> {
  _$UnauthedCopyWithImpl(Unauthed _value, $Res Function(Unauthed) _then)
      : super(_value, (v) => _then(v as Unauthed));

  @override
  Unauthed get _value => super._value as Unauthed;
}

/// @nodoc
class _$Unauthed implements Unauthed {
  const _$Unauthed();

  @override
  String toString() {
    return 'AuthState.unauthed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authed(),
    @required Result unauthed(),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unauthed != null);
    assert(failed != null);
    return unauthed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authed(),
    Result unauthed(),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthed != null) {
      return unauthed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authed(Authed value),
    @required Result unauthed(Unauthed value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unauthed != null);
    assert(failed != null);
    return unauthed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authed(Authed value),
    Result unauthed(Unauthed value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthed != null) {
      return unauthed(this);
    }
    return orElse();
  }
}

abstract class Unauthed implements AuthState {
  const factory Unauthed() = _$Unauthed;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.failed(error: $error)';
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
    @required Result authed(),
    @required Result unauthed(),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unauthed != null);
    assert(failed != null);
    return failed(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authed(),
    Result unauthed(),
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
    @required Result authed(Authed value),
    @required Result unauthed(Unauthed value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unauthed != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authed(Authed value),
    Result unauthed(Unauthed value),
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

abstract class Failed implements AuthState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}
