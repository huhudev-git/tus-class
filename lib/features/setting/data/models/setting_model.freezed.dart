// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SettingModel _$SettingModelFromJson(Map<String, dynamic> json) {
  return _SettingModel.fromJson(json);
}

class _$SettingModelTearOff {
  const _$SettingModelTearOff();

  _SettingModel call({@required bool isAutoLogin, @required bool hasToken}) {
    return _SettingModel(
      isAutoLogin: isAutoLogin,
      hasToken: hasToken,
    );
  }
}

// ignore: unused_element
const $SettingModel = _$SettingModelTearOff();

mixin _$SettingModel {
  bool get isAutoLogin;
  bool get hasToken;

  Map<String, dynamic> toJson();
  $SettingModelCopyWith<SettingModel> get copyWith;
}

abstract class $SettingModelCopyWith<$Res> {
  factory $SettingModelCopyWith(
          SettingModel value, $Res Function(SettingModel) then) =
      _$SettingModelCopyWithImpl<$Res>;
  $Res call({bool isAutoLogin, bool hasToken});
}

class _$SettingModelCopyWithImpl<$Res> implements $SettingModelCopyWith<$Res> {
  _$SettingModelCopyWithImpl(this._value, this._then);

  final SettingModel _value;
  // ignore: unused_field
  final $Res Function(SettingModel) _then;

  @override
  $Res call({
    Object isAutoLogin = freezed,
    Object hasToken = freezed,
  }) {
    return _then(_value.copyWith(
      isAutoLogin:
          isAutoLogin == freezed ? _value.isAutoLogin : isAutoLogin as bool,
      hasToken: hasToken == freezed ? _value.hasToken : hasToken as bool,
    ));
  }
}

abstract class _$SettingModelCopyWith<$Res>
    implements $SettingModelCopyWith<$Res> {
  factory _$SettingModelCopyWith(
          _SettingModel value, $Res Function(_SettingModel) then) =
      __$SettingModelCopyWithImpl<$Res>;
  @override
  $Res call({bool isAutoLogin, bool hasToken});
}

class __$SettingModelCopyWithImpl<$Res> extends _$SettingModelCopyWithImpl<$Res>
    implements _$SettingModelCopyWith<$Res> {
  __$SettingModelCopyWithImpl(
      _SettingModel _value, $Res Function(_SettingModel) _then)
      : super(_value, (v) => _then(v as _SettingModel));

  @override
  _SettingModel get _value => super._value as _SettingModel;

  @override
  $Res call({
    Object isAutoLogin = freezed,
    Object hasToken = freezed,
  }) {
    return _then(_SettingModel(
      isAutoLogin:
          isAutoLogin == freezed ? _value.isAutoLogin : isAutoLogin as bool,
      hasToken: hasToken == freezed ? _value.hasToken : hasToken as bool,
    ));
  }
}

@JsonSerializable()
class _$_SettingModel extends _SettingModel {
  const _$_SettingModel({@required this.isAutoLogin, @required this.hasToken})
      : assert(isAutoLogin != null),
        assert(hasToken != null),
        super._();

  factory _$_SettingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingModelFromJson(json);

  @override
  final bool isAutoLogin;
  @override
  final bool hasToken;

  @override
  String toString() {
    return 'SettingModel(isAutoLogin: $isAutoLogin, hasToken: $hasToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingModel &&
            (identical(other.isAutoLogin, isAutoLogin) ||
                const DeepCollectionEquality()
                    .equals(other.isAutoLogin, isAutoLogin)) &&
            (identical(other.hasToken, hasToken) ||
                const DeepCollectionEquality()
                    .equals(other.hasToken, hasToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAutoLogin) ^
      const DeepCollectionEquality().hash(hasToken);

  @override
  _$SettingModelCopyWith<_SettingModel> get copyWith =>
      __$SettingModelCopyWithImpl<_SettingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingModelToJson(this);
  }
}

abstract class _SettingModel extends SettingModel {
  const _SettingModel._() : super._();
  const factory _SettingModel(
      {@required bool isAutoLogin, @required bool hasToken}) = _$_SettingModel;

  factory _SettingModel.fromJson(Map<String, dynamic> json) =
      _$_SettingModel.fromJson;

  @override
  bool get isAutoLogin;
  @override
  bool get hasToken;
  @override
  _$SettingModelCopyWith<_SettingModel> get copyWith;
}
