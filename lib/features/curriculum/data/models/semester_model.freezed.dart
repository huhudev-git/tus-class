// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'semester_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SemesterModel _$SemesterModelFromJson(Map<String, dynamic> json) {
  return _SemesterModel.fromJson(json);
}

class _$SemesterModelTearOff {
  const _$SemesterModelTearOff();

  _SemesterModel call({@required String name, @required String value}) {
    return _SemesterModel(
      name: name,
      value: value,
    );
  }
}

// ignore: unused_element
const $SemesterModel = _$SemesterModelTearOff();

mixin _$SemesterModel {
  String get name;
  String get value;

  Map<String, dynamic> toJson();
  $SemesterModelCopyWith<SemesterModel> get copyWith;
}

abstract class $SemesterModelCopyWith<$Res> {
  factory $SemesterModelCopyWith(
          SemesterModel value, $Res Function(SemesterModel) then) =
      _$SemesterModelCopyWithImpl<$Res>;
  $Res call({String name, String value});
}

class _$SemesterModelCopyWithImpl<$Res>
    implements $SemesterModelCopyWith<$Res> {
  _$SemesterModelCopyWithImpl(this._value, this._then);

  final SemesterModel _value;
  // ignore: unused_field
  final $Res Function(SemesterModel) _then;

  @override
  $Res call({
    Object name = freezed,
    Object value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

abstract class _$SemesterModelCopyWith<$Res>
    implements $SemesterModelCopyWith<$Res> {
  factory _$SemesterModelCopyWith(
          _SemesterModel value, $Res Function(_SemesterModel) then) =
      __$SemesterModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String value});
}

class __$SemesterModelCopyWithImpl<$Res>
    extends _$SemesterModelCopyWithImpl<$Res>
    implements _$SemesterModelCopyWith<$Res> {
  __$SemesterModelCopyWithImpl(
      _SemesterModel _value, $Res Function(_SemesterModel) _then)
      : super(_value, (v) => _then(v as _SemesterModel));

  @override
  _SemesterModel get _value => super._value as _SemesterModel;

  @override
  $Res call({
    Object name = freezed,
    Object value = freezed,
  }) {
    return _then(_SemesterModel(
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

@JsonSerializable()
class _$_SemesterModel extends _SemesterModel {
  const _$_SemesterModel({@required this.name, @required this.value})
      : assert(name != null),
        assert(value != null),
        super._();

  factory _$_SemesterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SemesterModelFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'SemesterModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SemesterModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value);

  @override
  _$SemesterModelCopyWith<_SemesterModel> get copyWith =>
      __$SemesterModelCopyWithImpl<_SemesterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SemesterModelToJson(this);
  }
}

abstract class _SemesterModel extends SemesterModel {
  const _SemesterModel._() : super._();
  const factory _SemesterModel(
      {@required String name, @required String value}) = _$_SemesterModel;

  factory _SemesterModel.fromJson(Map<String, dynamic> json) =
      _$_SemesterModel.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  _$SemesterModelCopyWith<_SemesterModel> get copyWith;
}
