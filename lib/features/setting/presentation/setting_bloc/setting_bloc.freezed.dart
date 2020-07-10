// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SettingEventTearOff {
  const _$SettingEventTearOff();

  Init init() {
    return const Init();
  }

  SetAutoLogin setAutoLogin({bool status}) {
    return SetAutoLogin(
      status: status,
    );
  }

  DeleteAuthToken deleteAuthToken() {
    return const DeleteAuthToken();
  }

  SetAuthToken setAuthToken({String username, String password}) {
    return SetAuthToken(
      username: username,
      password: password,
    );
  }

  DeleteCacheFiles deleteCacheFiles() {
    return const DeleteCacheFiles();
  }
}

// ignore: unused_element
const $SettingEvent = _$SettingEventTearOff();

mixin _$SettingEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result setAutoLogin(bool status),
    @required Result deleteAuthToken(),
    @required Result setAuthToken(String username, String password),
    @required Result deleteCacheFiles(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result setAutoLogin(bool status),
    Result deleteAuthToken(),
    Result setAuthToken(String username, String password),
    Result deleteCacheFiles(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result setAutoLogin(SetAutoLogin value),
    @required Result deleteAuthToken(DeleteAuthToken value),
    @required Result setAuthToken(SetAuthToken value),
    @required Result deleteCacheFiles(DeleteCacheFiles value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result setAutoLogin(SetAutoLogin value),
    Result deleteAuthToken(DeleteAuthToken value),
    Result setAuthToken(SetAuthToken value),
    Result deleteCacheFiles(DeleteCacheFiles value),
    @required Result orElse(),
  });
}

abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res>;
}

class _$SettingEventCopyWithImpl<$Res> implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  final SettingEvent _value;
  // ignore: unused_field
  final $Res Function(SettingEvent) _then;
}

abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

class _$InitCopyWithImpl<$Res> extends _$SettingEventCopyWithImpl<$Res>
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
    return 'SettingEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result setAutoLogin(bool status),
    @required Result deleteAuthToken(),
    @required Result setAuthToken(String username, String password),
    @required Result deleteCacheFiles(),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result setAutoLogin(bool status),
    Result deleteAuthToken(),
    Result setAuthToken(String username, String password),
    Result deleteCacheFiles(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result setAutoLogin(SetAutoLogin value),
    @required Result deleteAuthToken(DeleteAuthToken value),
    @required Result setAuthToken(SetAuthToken value),
    @required Result deleteCacheFiles(DeleteCacheFiles value),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result setAutoLogin(SetAutoLogin value),
    Result deleteAuthToken(DeleteAuthToken value),
    Result setAuthToken(SetAuthToken value),
    Result deleteCacheFiles(DeleteCacheFiles value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SettingEvent {
  const factory Init() = _$Init;
}

abstract class $SetAutoLoginCopyWith<$Res> {
  factory $SetAutoLoginCopyWith(
          SetAutoLogin value, $Res Function(SetAutoLogin) then) =
      _$SetAutoLoginCopyWithImpl<$Res>;
  $Res call({bool status});
}

class _$SetAutoLoginCopyWithImpl<$Res> extends _$SettingEventCopyWithImpl<$Res>
    implements $SetAutoLoginCopyWith<$Res> {
  _$SetAutoLoginCopyWithImpl(
      SetAutoLogin _value, $Res Function(SetAutoLogin) _then)
      : super(_value, (v) => _then(v as SetAutoLogin));

  @override
  SetAutoLogin get _value => super._value as SetAutoLogin;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(SetAutoLogin(
      status: status == freezed ? _value.status : status as bool,
    ));
  }
}

class _$SetAutoLogin implements SetAutoLogin {
  const _$SetAutoLogin({this.status});

  @override
  final bool status;

  @override
  String toString() {
    return 'SettingEvent.setAutoLogin(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetAutoLogin &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @override
  $SetAutoLoginCopyWith<SetAutoLogin> get copyWith =>
      _$SetAutoLoginCopyWithImpl<SetAutoLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result setAutoLogin(bool status),
    @required Result deleteAuthToken(),
    @required Result setAuthToken(String username, String password),
    @required Result deleteCacheFiles(),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return setAutoLogin(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result setAutoLogin(bool status),
    Result deleteAuthToken(),
    Result setAuthToken(String username, String password),
    Result deleteCacheFiles(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setAutoLogin != null) {
      return setAutoLogin(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result setAutoLogin(SetAutoLogin value),
    @required Result deleteAuthToken(DeleteAuthToken value),
    @required Result setAuthToken(SetAuthToken value),
    @required Result deleteCacheFiles(DeleteCacheFiles value),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return setAutoLogin(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result setAutoLogin(SetAutoLogin value),
    Result deleteAuthToken(DeleteAuthToken value),
    Result setAuthToken(SetAuthToken value),
    Result deleteCacheFiles(DeleteCacheFiles value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setAutoLogin != null) {
      return setAutoLogin(this);
    }
    return orElse();
  }
}

abstract class SetAutoLogin implements SettingEvent {
  const factory SetAutoLogin({bool status}) = _$SetAutoLogin;

  bool get status;
  $SetAutoLoginCopyWith<SetAutoLogin> get copyWith;
}

abstract class $DeleteAuthTokenCopyWith<$Res> {
  factory $DeleteAuthTokenCopyWith(
          DeleteAuthToken value, $Res Function(DeleteAuthToken) then) =
      _$DeleteAuthTokenCopyWithImpl<$Res>;
}

class _$DeleteAuthTokenCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res>
    implements $DeleteAuthTokenCopyWith<$Res> {
  _$DeleteAuthTokenCopyWithImpl(
      DeleteAuthToken _value, $Res Function(DeleteAuthToken) _then)
      : super(_value, (v) => _then(v as DeleteAuthToken));

  @override
  DeleteAuthToken get _value => super._value as DeleteAuthToken;
}

class _$DeleteAuthToken implements DeleteAuthToken {
  const _$DeleteAuthToken();

  @override
  String toString() {
    return 'SettingEvent.deleteAuthToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteAuthToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result setAutoLogin(bool status),
    @required Result deleteAuthToken(),
    @required Result setAuthToken(String username, String password),
    @required Result deleteCacheFiles(),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return deleteAuthToken();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result setAutoLogin(bool status),
    Result deleteAuthToken(),
    Result setAuthToken(String username, String password),
    Result deleteCacheFiles(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteAuthToken != null) {
      return deleteAuthToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result setAutoLogin(SetAutoLogin value),
    @required Result deleteAuthToken(DeleteAuthToken value),
    @required Result setAuthToken(SetAuthToken value),
    @required Result deleteCacheFiles(DeleteCacheFiles value),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return deleteAuthToken(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result setAutoLogin(SetAutoLogin value),
    Result deleteAuthToken(DeleteAuthToken value),
    Result setAuthToken(SetAuthToken value),
    Result deleteCacheFiles(DeleteCacheFiles value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteAuthToken != null) {
      return deleteAuthToken(this);
    }
    return orElse();
  }
}

abstract class DeleteAuthToken implements SettingEvent {
  const factory DeleteAuthToken() = _$DeleteAuthToken;
}

abstract class $SetAuthTokenCopyWith<$Res> {
  factory $SetAuthTokenCopyWith(
          SetAuthToken value, $Res Function(SetAuthToken) then) =
      _$SetAuthTokenCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

class _$SetAuthTokenCopyWithImpl<$Res> extends _$SettingEventCopyWithImpl<$Res>
    implements $SetAuthTokenCopyWith<$Res> {
  _$SetAuthTokenCopyWithImpl(
      SetAuthToken _value, $Res Function(SetAuthToken) _then)
      : super(_value, (v) => _then(v as SetAuthToken));

  @override
  SetAuthToken get _value => super._value as SetAuthToken;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(SetAuthToken(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$SetAuthToken implements SetAuthToken {
  const _$SetAuthToken({this.username, this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'SettingEvent.setAuthToken(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetAuthToken &&
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
  $SetAuthTokenCopyWith<SetAuthToken> get copyWith =>
      _$SetAuthTokenCopyWithImpl<SetAuthToken>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result setAutoLogin(bool status),
    @required Result deleteAuthToken(),
    @required Result setAuthToken(String username, String password),
    @required Result deleteCacheFiles(),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return setAuthToken(username, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result setAutoLogin(bool status),
    Result deleteAuthToken(),
    Result setAuthToken(String username, String password),
    Result deleteCacheFiles(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setAuthToken != null) {
      return setAuthToken(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result setAutoLogin(SetAutoLogin value),
    @required Result deleteAuthToken(DeleteAuthToken value),
    @required Result setAuthToken(SetAuthToken value),
    @required Result deleteCacheFiles(DeleteCacheFiles value),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return setAuthToken(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result setAutoLogin(SetAutoLogin value),
    Result deleteAuthToken(DeleteAuthToken value),
    Result setAuthToken(SetAuthToken value),
    Result deleteCacheFiles(DeleteCacheFiles value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setAuthToken != null) {
      return setAuthToken(this);
    }
    return orElse();
  }
}

abstract class SetAuthToken implements SettingEvent {
  const factory SetAuthToken({String username, String password}) =
      _$SetAuthToken;

  String get username;
  String get password;
  $SetAuthTokenCopyWith<SetAuthToken> get copyWith;
}

abstract class $DeleteCacheFilesCopyWith<$Res> {
  factory $DeleteCacheFilesCopyWith(
          DeleteCacheFiles value, $Res Function(DeleteCacheFiles) then) =
      _$DeleteCacheFilesCopyWithImpl<$Res>;
}

class _$DeleteCacheFilesCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res>
    implements $DeleteCacheFilesCopyWith<$Res> {
  _$DeleteCacheFilesCopyWithImpl(
      DeleteCacheFiles _value, $Res Function(DeleteCacheFiles) _then)
      : super(_value, (v) => _then(v as DeleteCacheFiles));

  @override
  DeleteCacheFiles get _value => super._value as DeleteCacheFiles;
}

class _$DeleteCacheFiles implements DeleteCacheFiles {
  const _$DeleteCacheFiles();

  @override
  String toString() {
    return 'SettingEvent.deleteCacheFiles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteCacheFiles);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result setAutoLogin(bool status),
    @required Result deleteAuthToken(),
    @required Result setAuthToken(String username, String password),
    @required Result deleteCacheFiles(),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return deleteCacheFiles();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result setAutoLogin(bool status),
    Result deleteAuthToken(),
    Result setAuthToken(String username, String password),
    Result deleteCacheFiles(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCacheFiles != null) {
      return deleteCacheFiles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result setAutoLogin(SetAutoLogin value),
    @required Result deleteAuthToken(DeleteAuthToken value),
    @required Result setAuthToken(SetAuthToken value),
    @required Result deleteCacheFiles(DeleteCacheFiles value),
  }) {
    assert(init != null);
    assert(setAutoLogin != null);
    assert(deleteAuthToken != null);
    assert(setAuthToken != null);
    assert(deleteCacheFiles != null);
    return deleteCacheFiles(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result setAutoLogin(SetAutoLogin value),
    Result deleteAuthToken(DeleteAuthToken value),
    Result setAuthToken(SetAuthToken value),
    Result deleteCacheFiles(DeleteCacheFiles value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCacheFiles != null) {
      return deleteCacheFiles(this);
    }
    return orElse();
  }
}

abstract class DeleteCacheFiles implements SettingEvent {
  const factory DeleteCacheFiles() = _$DeleteCacheFiles;
}

class _$SettingStateTearOff {
  const _$SettingStateTearOff();

  _SettingState call({Setting setting, Failure error}) {
    return _SettingState(
      setting: setting,
      error: error,
    );
  }
}

// ignore: unused_element
const $SettingState = _$SettingStateTearOff();

mixin _$SettingState {
  Setting get setting;
  Failure get error;

  $SettingStateCopyWith<SettingState> get copyWith;
}

abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
  $Res call({Setting setting, Failure error});
}

class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;

  @override
  $Res call({
    Object setting = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      setting: setting == freezed ? _value.setting : setting as Setting,
      error: error == freezed ? _value.error : error as Failure,
    ));
  }
}

abstract class _$SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$SettingStateCopyWith(
          _SettingState value, $Res Function(_SettingState) then) =
      __$SettingStateCopyWithImpl<$Res>;
  @override
  $Res call({Setting setting, Failure error});
}

class __$SettingStateCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateCopyWith<$Res> {
  __$SettingStateCopyWithImpl(
      _SettingState _value, $Res Function(_SettingState) _then)
      : super(_value, (v) => _then(v as _SettingState));

  @override
  _SettingState get _value => super._value as _SettingState;

  @override
  $Res call({
    Object setting = freezed,
    Object error = freezed,
  }) {
    return _then(_SettingState(
      setting: setting == freezed ? _value.setting : setting as Setting,
      error: error == freezed ? _value.error : error as Failure,
    ));
  }
}

class _$_SettingState implements _SettingState {
  const _$_SettingState({this.setting, this.error});

  @override
  final Setting setting;
  @override
  final Failure error;

  @override
  String toString() {
    return 'SettingState(setting: $setting, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingState &&
            (identical(other.setting, setting) ||
                const DeepCollectionEquality()
                    .equals(other.setting, setting)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(setting) ^
      const DeepCollectionEquality().hash(error);

  @override
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      __$SettingStateCopyWithImpl<_SettingState>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({Setting setting, Failure error}) =
      _$_SettingState;

  @override
  Setting get setting;
  @override
  Failure get error;
  @override
  _$SettingStateCopyWith<_SettingState> get copyWith;
}
