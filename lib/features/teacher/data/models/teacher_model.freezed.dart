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
  _TeacherModel call(
      {@required String position,
      @required String location,
      @required String workTime,
      @required String url,
      @required String email,
      @required String name}) {
    return _TeacherModel(
      position: position,
      location: location,
      workTime: workTime,
      url: url,
      email: email,
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
  String get position;
  String get location;
  String get workTime;
  String get url;
  String get email;
  String get name;

  Map<String, dynamic> toJson();
  $TeacherModelCopyWith<TeacherModel> get copyWith;
}

/// @nodoc
abstract class $TeacherModelCopyWith<$Res> {
  factory $TeacherModelCopyWith(
          TeacherModel value, $Res Function(TeacherModel) then) =
      _$TeacherModelCopyWithImpl<$Res>;
  $Res call(
      {String position,
      String location,
      String workTime,
      String url,
      String email,
      String name});
}

/// @nodoc
class _$TeacherModelCopyWithImpl<$Res> implements $TeacherModelCopyWith<$Res> {
  _$TeacherModelCopyWithImpl(this._value, this._then);

  final TeacherModel _value;
  // ignore: unused_field
  final $Res Function(TeacherModel) _then;

  @override
  $Res call({
    Object position = freezed,
    Object location = freezed,
    Object workTime = freezed,
    Object url = freezed,
    Object email = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed ? _value.position : position as String,
      location: location == freezed ? _value.location : location as String,
      workTime: workTime == freezed ? _value.workTime : workTime as String,
      url: url == freezed ? _value.url : url as String,
      email: email == freezed ? _value.email : email as String,
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
  $Res call(
      {String position,
      String location,
      String workTime,
      String url,
      String email,
      String name});
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
    Object position = freezed,
    Object location = freezed,
    Object workTime = freezed,
    Object url = freezed,
    Object email = freezed,
    Object name = freezed,
  }) {
    return _then(_TeacherModel(
      position: position == freezed ? _value.position : position as String,
      location: location == freezed ? _value.location : location as String,
      workTime: workTime == freezed ? _value.workTime : workTime as String,
      url: url == freezed ? _value.url : url as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TeacherModel extends _TeacherModel {
  const _$_TeacherModel(
      {@required this.position,
      @required this.location,
      @required this.workTime,
      @required this.url,
      @required this.email,
      @required this.name})
      : assert(position != null),
        assert(location != null),
        assert(workTime != null),
        assert(url != null),
        assert(email != null),
        assert(name != null),
        super._();

  factory _$_TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TeacherModelFromJson(json);

  @override
  final String position;
  @override
  final String location;
  @override
  final String workTime;
  @override
  final String url;
  @override
  final String email;
  @override
  final String name;

  @override
  String toString() {
    return 'TeacherModel(position: $position, location: $location, workTime: $workTime, url: $url, email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TeacherModel &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.workTime, workTime) ||
                const DeepCollectionEquality()
                    .equals(other.workTime, workTime)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(workTime) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(email) ^
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
  const factory _TeacherModel(
      {@required String position,
      @required String location,
      @required String workTime,
      @required String url,
      @required String email,
      @required String name}) = _$_TeacherModel;

  factory _TeacherModel.fromJson(Map<String, dynamic> json) =
      _$_TeacherModel.fromJson;

  @override
  String get position;
  @override
  String get location;
  @override
  String get workTime;
  @override
  String get url;
  @override
  String get email;
  @override
  String get name;
  @override
  _$TeacherModelCopyWith<_TeacherModel> get copyWith;
}
