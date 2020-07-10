// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'attendance_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AttendanceRateModel _$AttendanceRateModelFromJson(Map<String, dynamic> json) {
  return _AttendanceRateModel.fromJson(json);
}

class _$AttendanceRateModelTearOff {
  const _$AttendanceRateModelTearOff();

  _AttendanceRateModel call(
      {@required String code, @required String course, @required int rate}) {
    return _AttendanceRateModel(
      code: code,
      course: course,
      rate: rate,
    );
  }
}

// ignore: unused_element
const $AttendanceRateModel = _$AttendanceRateModelTearOff();

mixin _$AttendanceRateModel {
  String get code;
  String get course;
  int get rate;

  Map<String, dynamic> toJson();
  $AttendanceRateModelCopyWith<AttendanceRateModel> get copyWith;
}

abstract class $AttendanceRateModelCopyWith<$Res> {
  factory $AttendanceRateModelCopyWith(
          AttendanceRateModel value, $Res Function(AttendanceRateModel) then) =
      _$AttendanceRateModelCopyWithImpl<$Res>;
  $Res call({String code, String course, int rate});
}

class _$AttendanceRateModelCopyWithImpl<$Res>
    implements $AttendanceRateModelCopyWith<$Res> {
  _$AttendanceRateModelCopyWithImpl(this._value, this._then);

  final AttendanceRateModel _value;
  // ignore: unused_field
  final $Res Function(AttendanceRateModel) _then;

  @override
  $Res call({
    Object code = freezed,
    Object course = freezed,
    Object rate = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      course: course == freezed ? _value.course : course as String,
      rate: rate == freezed ? _value.rate : rate as int,
    ));
  }
}

abstract class _$AttendanceRateModelCopyWith<$Res>
    implements $AttendanceRateModelCopyWith<$Res> {
  factory _$AttendanceRateModelCopyWith(_AttendanceRateModel value,
          $Res Function(_AttendanceRateModel) then) =
      __$AttendanceRateModelCopyWithImpl<$Res>;
  @override
  $Res call({String code, String course, int rate});
}

class __$AttendanceRateModelCopyWithImpl<$Res>
    extends _$AttendanceRateModelCopyWithImpl<$Res>
    implements _$AttendanceRateModelCopyWith<$Res> {
  __$AttendanceRateModelCopyWithImpl(
      _AttendanceRateModel _value, $Res Function(_AttendanceRateModel) _then)
      : super(_value, (v) => _then(v as _AttendanceRateModel));

  @override
  _AttendanceRateModel get _value => super._value as _AttendanceRateModel;

  @override
  $Res call({
    Object code = freezed,
    Object course = freezed,
    Object rate = freezed,
  }) {
    return _then(_AttendanceRateModel(
      code: code == freezed ? _value.code : code as String,
      course: course == freezed ? _value.course : course as String,
      rate: rate == freezed ? _value.rate : rate as int,
    ));
  }
}

@JsonSerializable()
class _$_AttendanceRateModel extends _AttendanceRateModel {
  const _$_AttendanceRateModel(
      {@required this.code, @required this.course, @required this.rate})
      : assert(code != null),
        assert(course != null),
        assert(rate != null),
        super._();

  factory _$_AttendanceRateModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AttendanceRateModelFromJson(json);

  @override
  final String code;
  @override
  final String course;
  @override
  final int rate;

  @override
  String toString() {
    return 'AttendanceRateModel(code: $code, course: $course, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AttendanceRateModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(rate);

  @override
  _$AttendanceRateModelCopyWith<_AttendanceRateModel> get copyWith =>
      __$AttendanceRateModelCopyWithImpl<_AttendanceRateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AttendanceRateModelToJson(this);
  }
}

abstract class _AttendanceRateModel extends AttendanceRateModel {
  const _AttendanceRateModel._() : super._();
  const factory _AttendanceRateModel(
      {@required String code,
      @required String course,
      @required int rate}) = _$_AttendanceRateModel;

  factory _AttendanceRateModel.fromJson(Map<String, dynamic> json) =
      _$_AttendanceRateModel.fromJson;

  @override
  String get code;
  @override
  String get course;
  @override
  int get rate;
  @override
  _$AttendanceRateModelCopyWith<_AttendanceRateModel> get copyWith;
}
