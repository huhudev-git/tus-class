// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'teacher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) {
  return _TeacherModel.fromJson(json);
}

/// @nodoc
class _$TeacherModelTearOff {
  const _$TeacherModelTearOff();

// ignore: unused_element
  _TeacherModel call({@required String code, @required String name}) {
    return _TeacherModel(
      code: code,
      name: name,
    );
  }

// ignore: unused_element
  TeacherModel fromJson(Map<String, Object> json) {
    return TeacherModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TeacherModel = _$TeacherModelTearOff();

/// @nodoc
mixin _$TeacherModel {
  String get code;
  String get name;

  Map<String, dynamic> toJson();
  $TeacherModelCopyWith<TeacherModel> get copyWith;
}

/// @nodoc
abstract class $TeacherModelCopyWith<$Res> {
  factory $TeacherModelCopyWith(
          TeacherModel value, $Res Function(TeacherModel) then) =
      _$TeacherModelCopyWithImpl<$Res>;
  $Res call({String code, String name});
}

/// @nodoc
class _$TeacherModelCopyWithImpl<$Res> implements $TeacherModelCopyWith<$Res> {
  _$TeacherModelCopyWithImpl(this._value, this._then);

  final TeacherModel _value;
  // ignore: unused_field
  final $Res Function(TeacherModel) _then;

  @override
  $Res call({
    Object code = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$TeacherModelCopyWith<$Res>
    implements $TeacherModelCopyWith<$Res> {
  factory _$TeacherModelCopyWith(
          _TeacherModel value, $Res Function(_TeacherModel) then) =
      __$TeacherModelCopyWithImpl<$Res>;
  @override
  $Res call({String code, String name});
}

/// @nodoc
class __$TeacherModelCopyWithImpl<$Res> extends _$TeacherModelCopyWithImpl<$Res>
    implements _$TeacherModelCopyWith<$Res> {
  __$TeacherModelCopyWithImpl(
      _TeacherModel _value, $Res Function(_TeacherModel) _then)
      : super(_value, (v) => _then(v as _TeacherModel));

  @override
  _TeacherModel get _value => super._value as _TeacherModel;

  @override
  $Res call({
    Object code = freezed,
    Object name = freezed,
  }) {
    return _then(_TeacherModel(
      code: code == freezed ? _value.code : code as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TeacherModel extends _TeacherModel {
  const _$_TeacherModel({@required this.code, @required this.name})
      : assert(code != null),
        assert(name != null),
        super._();

  factory _$_TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TeacherModelFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'TeacherModel(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TeacherModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$TeacherModelCopyWith<_TeacherModel> get copyWith =>
      __$TeacherModelCopyWithImpl<_TeacherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TeacherModelToJson(this);
  }
}

abstract class _TeacherModel extends TeacherModel {
  const _TeacherModel._() : super._();
  const factory _TeacherModel({@required String code, @required String name}) =
      _$_TeacherModel;

  factory _TeacherModel.fromJson(Map<String, dynamic> json) =
      _$_TeacherModel.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  _$TeacherModelCopyWith<_TeacherModel> get copyWith;
}
