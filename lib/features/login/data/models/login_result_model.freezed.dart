// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginResultModel _$LoginResultModelFromJson(Map<String, dynamic> json) {
  return _LoginResultModel.fromJson(json);
}

/// @nodoc
class _$LoginResultModelTearOff {
  const _$LoginResultModelTearOff();

// ignore: unused_element
  _LoginResultModel call(
      {@required bool isAuth, @required String name, @required String error}) {
    return _LoginResultModel(
      isAuth: isAuth,
      name: name,
      error: error,
    );
  }

// ignore: unused_element
  LoginResultModel fromJson(Map<String, Object> json) {
    return LoginResultModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginResultModel = _$LoginResultModelTearOff();

/// @nodoc
mixin _$LoginResultModel {
  bool get isAuth;
  String get name;
  String get error;

  Map<String, dynamic> toJson();
  $LoginResultModelCopyWith<LoginResultModel> get copyWith;
}

/// @nodoc
abstract class $LoginResultModelCopyWith<$Res> {
  factory $LoginResultModelCopyWith(
          LoginResultModel value, $Res Function(LoginResultModel) then) =
      _$LoginResultModelCopyWithImpl<$Res>;
  $Res call({bool isAuth, String name, String error});
}

/// @nodoc
class _$LoginResultModelCopyWithImpl<$Res>
    implements $LoginResultModelCopyWith<$Res> {
  _$LoginResultModelCopyWithImpl(this._value, this._then);

  final LoginResultModel _value;
  // ignore: unused_field
  final $Res Function(LoginResultModel) _then;

  @override
  $Res call({
    Object isAuth = freezed,
    Object name = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      isAuth: isAuth == freezed ? _value.isAuth : isAuth as bool,
      name: name == freezed ? _value.name : name as String,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginResultModelCopyWith<$Res>
    implements $LoginResultModelCopyWith<$Res> {
  factory _$LoginResultModelCopyWith(
          _LoginResultModel value, $Res Function(_LoginResultModel) then) =
      __$LoginResultModelCopyWithImpl<$Res>;
  @override
  $Res call({bool isAuth, String name, String error});
}

/// @nodoc
class __$LoginResultModelCopyWithImpl<$Res>
    extends _$LoginResultModelCopyWithImpl<$Res>
    implements _$LoginResultModelCopyWith<$Res> {
  __$LoginResultModelCopyWithImpl(
      _LoginResultModel _value, $Res Function(_LoginResultModel) _then)
      : super(_value, (v) => _then(v as _LoginResultModel));

  @override
  _LoginResultModel get _value => super._value as _LoginResultModel;

  @override
  $Res call({
    Object isAuth = freezed,
    Object name = freezed,
    Object error = freezed,
  }) {
    return _then(_LoginResultModel(
      isAuth: isAuth == freezed ? _value.isAuth : isAuth as bool,
      name: name == freezed ? _value.name : name as String,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoginResultModel extends _LoginResultModel {
  const _$_LoginResultModel(
      {@required this.isAuth, @required this.name, @required this.error})
      : assert(isAuth != null),
        assert(name != null),
        assert(error != null),
        super._();

  factory _$_LoginResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginResultModelFromJson(json);

  @override
  final bool isAuth;
  @override
  final String name;
  @override
  final String error;

  @override
  String toString() {
    return 'LoginResultModel(isAuth: $isAuth, name: $name, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginResultModel &&
            (identical(other.isAuth, isAuth) ||
                const DeepCollectionEquality().equals(other.isAuth, isAuth)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAuth) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(error);

  @override
  _$LoginResultModelCopyWith<_LoginResultModel> get copyWith =>
      __$LoginResultModelCopyWithImpl<_LoginResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginResultModelToJson(this);
  }
}

abstract class _LoginResultModel extends LoginResultModel {
  const _LoginResultModel._() : super._();
  const factory _LoginResultModel(
      {@required bool isAuth,
      @required String name,
      @required String error}) = _$_LoginResultModel;

  factory _LoginResultModel.fromJson(Map<String, dynamic> json) =
      _$_LoginResultModel.fromJson;

  @override
  bool get isAuth;
  @override
  String get name;
  @override
  String get error;
  @override
  _$LoginResultModelCopyWith<_LoginResultModel> get copyWith;
}
