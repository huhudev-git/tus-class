// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthTokenModel _$AuthTokenModelFromJson(Map<String, dynamic> json) {
  return _AuthTokenModel.fromJson(json);
}

/// @nodoc
class _$AuthTokenModelTearOff {
  const _$AuthTokenModelTearOff();

// ignore: unused_element
  _AuthTokenModel call({@required String username, @required String password}) {
    return _AuthTokenModel(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  AuthTokenModel fromJson(Map<String, Object> json) {
    return AuthTokenModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthTokenModel = _$AuthTokenModelTearOff();

/// @nodoc
mixin _$AuthTokenModel {
  String get username;
  String get password;

  Map<String, dynamic> toJson();
  $AuthTokenModelCopyWith<AuthTokenModel> get copyWith;
}

/// @nodoc
abstract class $AuthTokenModelCopyWith<$Res> {
  factory $AuthTokenModelCopyWith(
          AuthTokenModel value, $Res Function(AuthTokenModel) then) =
      _$AuthTokenModelCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$AuthTokenModelCopyWithImpl<$Res>
    implements $AuthTokenModelCopyWith<$Res> {
  _$AuthTokenModelCopyWithImpl(this._value, this._then);

  final AuthTokenModel _value;
  // ignore: unused_field
  final $Res Function(AuthTokenModel) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthTokenModelCopyWith<$Res>
    implements $AuthTokenModelCopyWith<$Res> {
  factory _$AuthTokenModelCopyWith(
          _AuthTokenModel value, $Res Function(_AuthTokenModel) then) =
      __$AuthTokenModelCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$AuthTokenModelCopyWithImpl<$Res>
    extends _$AuthTokenModelCopyWithImpl<$Res>
    implements _$AuthTokenModelCopyWith<$Res> {
  __$AuthTokenModelCopyWithImpl(
      _AuthTokenModel _value, $Res Function(_AuthTokenModel) _then)
      : super(_value, (v) => _then(v as _AuthTokenModel));

  @override
  _AuthTokenModel get _value => super._value as _AuthTokenModel;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_AuthTokenModel(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthTokenModel extends _AuthTokenModel {
  const _$_AuthTokenModel({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null),
        super._();

  factory _$_AuthTokenModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthTokenModelFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthTokenModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthTokenModel &&
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
  _$AuthTokenModelCopyWith<_AuthTokenModel> get copyWith =>
      __$AuthTokenModelCopyWithImpl<_AuthTokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthTokenModelToJson(this);
  }
}

abstract class _AuthTokenModel extends AuthTokenModel {
  const _AuthTokenModel._() : super._();
  const factory _AuthTokenModel(
      {@required String username,
      @required String password}) = _$_AuthTokenModel;

  factory _AuthTokenModel.fromJson(Map<String, dynamic> json) =
      _$_AuthTokenModel.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  _$AuthTokenModelCopyWith<_AuthTokenModel> get copyWith;
}
