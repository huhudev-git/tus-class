// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'curriculum_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CurriculumModel _$CurriculumModelFromJson(Map<String, dynamic> json) {
  return _CurriculumModel.fromJson(json);
}

/// @nodoc
class _$CurriculumModelTearOff {
  const _$CurriculumModelTearOff();

// ignore: unused_element
  _CurriculumModel call(
      {@required @nullable String code,
      @required String course,
      @required String teacher,
      @required String semester,
      @required int year,
      @required int day,
      @required int period,
      @required bool hasDetail}) {
    return _CurriculumModel(
      code: code,
      course: course,
      teacher: teacher,
      semester: semester,
      year: year,
      day: day,
      period: period,
      hasDetail: hasDetail,
    );
  }

// ignore: unused_element
  CurriculumModel fromJson(Map<String, Object> json) {
    return CurriculumModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CurriculumModel = _$CurriculumModelTearOff();

/// @nodoc
mixin _$CurriculumModel {
  @nullable
  String get code;
  String get course;
  String get teacher;
  String get semester;
  int get year;
  int get day;
  int get period;
  bool get hasDetail;

  Map<String, dynamic> toJson();
  $CurriculumModelCopyWith<CurriculumModel> get copyWith;
}

/// @nodoc
abstract class $CurriculumModelCopyWith<$Res> {
  factory $CurriculumModelCopyWith(
          CurriculumModel value, $Res Function(CurriculumModel) then) =
      _$CurriculumModelCopyWithImpl<$Res>;
  $Res call(
      {@nullable String code,
      String course,
      String teacher,
      String semester,
      int year,
      int day,
      int period,
      bool hasDetail});
}

/// @nodoc
class _$CurriculumModelCopyWithImpl<$Res>
    implements $CurriculumModelCopyWith<$Res> {
  _$CurriculumModelCopyWithImpl(this._value, this._then);

  final CurriculumModel _value;
  // ignore: unused_field
  final $Res Function(CurriculumModel) _then;

  @override
  $Res call({
    Object code = freezed,
    Object course = freezed,
    Object teacher = freezed,
    Object semester = freezed,
    Object year = freezed,
    Object day = freezed,
    Object period = freezed,
    Object hasDetail = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      course: course == freezed ? _value.course : course as String,
      teacher: teacher == freezed ? _value.teacher : teacher as String,
      semester: semester == freezed ? _value.semester : semester as String,
      year: year == freezed ? _value.year : year as int,
      day: day == freezed ? _value.day : day as int,
      period: period == freezed ? _value.period : period as int,
      hasDetail: hasDetail == freezed ? _value.hasDetail : hasDetail as bool,
    ));
  }
}

/// @nodoc
abstract class _$CurriculumModelCopyWith<$Res>
    implements $CurriculumModelCopyWith<$Res> {
  factory _$CurriculumModelCopyWith(
          _CurriculumModel value, $Res Function(_CurriculumModel) then) =
      __$CurriculumModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String code,
      String course,
      String teacher,
      String semester,
      int year,
      int day,
      int period,
      bool hasDetail});
}

/// @nodoc
class __$CurriculumModelCopyWithImpl<$Res>
    extends _$CurriculumModelCopyWithImpl<$Res>
    implements _$CurriculumModelCopyWith<$Res> {
  __$CurriculumModelCopyWithImpl(
      _CurriculumModel _value, $Res Function(_CurriculumModel) _then)
      : super(_value, (v) => _then(v as _CurriculumModel));

  @override
  _CurriculumModel get _value => super._value as _CurriculumModel;

  @override
  $Res call({
    Object code = freezed,
    Object course = freezed,
    Object teacher = freezed,
    Object semester = freezed,
    Object year = freezed,
    Object day = freezed,
    Object period = freezed,
    Object hasDetail = freezed,
  }) {
    return _then(_CurriculumModel(
      code: code == freezed ? _value.code : code as String,
      course: course == freezed ? _value.course : course as String,
      teacher: teacher == freezed ? _value.teacher : teacher as String,
      semester: semester == freezed ? _value.semester : semester as String,
      year: year == freezed ? _value.year : year as int,
      day: day == freezed ? _value.day : day as int,
      period: period == freezed ? _value.period : period as int,
      hasDetail: hasDetail == freezed ? _value.hasDetail : hasDetail as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CurriculumModel extends _CurriculumModel {
  const _$_CurriculumModel(
      {@required @nullable this.code,
      @required this.course,
      @required this.teacher,
      @required this.semester,
      @required this.year,
      @required this.day,
      @required this.period,
      @required this.hasDetail})
      : assert(course != null),
        assert(teacher != null),
        assert(semester != null),
        assert(year != null),
        assert(day != null),
        assert(period != null),
        assert(hasDetail != null),
        super._();

  factory _$_CurriculumModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CurriculumModelFromJson(json);

  @override
  @nullable
  final String code;
  @override
  final String course;
  @override
  final String teacher;
  @override
  final String semester;
  @override
  final int year;
  @override
  final int day;
  @override
  final int period;
  @override
  final bool hasDetail;

  @override
  String toString() {
    return 'CurriculumModel(code: $code, course: $course, teacher: $teacher, semester: $semester, year: $year, day: $day, period: $period, hasDetail: $hasDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurriculumModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.teacher, teacher) ||
                const DeepCollectionEquality()
                    .equals(other.teacher, teacher)) &&
            (identical(other.semester, semester) ||
                const DeepCollectionEquality()
                    .equals(other.semester, semester)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.hasDetail, hasDetail) ||
                const DeepCollectionEquality()
                    .equals(other.hasDetail, hasDetail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(teacher) ^
      const DeepCollectionEquality().hash(semester) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(hasDetail);

  @override
  _$CurriculumModelCopyWith<_CurriculumModel> get copyWith =>
      __$CurriculumModelCopyWithImpl<_CurriculumModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurriculumModelToJson(this);
  }
}

abstract class _CurriculumModel extends CurriculumModel {
  const _CurriculumModel._() : super._();
  const factory _CurriculumModel(
      {@required @nullable String code,
      @required String course,
      @required String teacher,
      @required String semester,
      @required int year,
      @required int day,
      @required int period,
      @required bool hasDetail}) = _$_CurriculumModel;

  factory _CurriculumModel.fromJson(Map<String, dynamic> json) =
      _$_CurriculumModel.fromJson;

  @override
  @nullable
  String get code;
  @override
  String get course;
  @override
  String get teacher;
  @override
  String get semester;
  @override
  int get year;
  @override
  int get day;
  @override
  int get period;
  @override
  bool get hasDetail;
  @override
  _$CurriculumModelCopyWith<_CurriculumModel> get copyWith;
}
