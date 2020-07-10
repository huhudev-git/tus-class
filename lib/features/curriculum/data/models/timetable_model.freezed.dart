// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'timetable_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TimeTableModel _$TimeTableModelFromJson(Map<String, dynamic> json) {
  return _TimeTableModel.fromJson(json);
}

class _$TimeTableModelTearOff {
  const _$TimeTableModelTearOff();

  _TimeTableModel call(
      {@required List<CurriculumModel> curriculums,
      @required List<SemesterModel> semesters,
      @required String semester,
      @required String semesterValue,
      @required int year,
      @required bool isCurrent}) {
    return _TimeTableModel(
      curriculums: curriculums,
      semesters: semesters,
      semester: semester,
      semesterValue: semesterValue,
      year: year,
      isCurrent: isCurrent,
    );
  }
}

// ignore: unused_element
const $TimeTableModel = _$TimeTableModelTearOff();

mixin _$TimeTableModel {
  List<CurriculumModel> get curriculums;
  List<SemesterModel> get semesters;
  String get semester;
  String get semesterValue;
  int get year;
  bool get isCurrent;

  Map<String, dynamic> toJson();
  $TimeTableModelCopyWith<TimeTableModel> get copyWith;
}

abstract class $TimeTableModelCopyWith<$Res> {
  factory $TimeTableModelCopyWith(
          TimeTableModel value, $Res Function(TimeTableModel) then) =
      _$TimeTableModelCopyWithImpl<$Res>;
  $Res call(
      {List<CurriculumModel> curriculums,
      List<SemesterModel> semesters,
      String semester,
      String semesterValue,
      int year,
      bool isCurrent});
}

class _$TimeTableModelCopyWithImpl<$Res>
    implements $TimeTableModelCopyWith<$Res> {
  _$TimeTableModelCopyWithImpl(this._value, this._then);

  final TimeTableModel _value;
  // ignore: unused_field
  final $Res Function(TimeTableModel) _then;

  @override
  $Res call({
    Object curriculums = freezed,
    Object semesters = freezed,
    Object semester = freezed,
    Object semesterValue = freezed,
    Object year = freezed,
    Object isCurrent = freezed,
  }) {
    return _then(_value.copyWith(
      curriculums: curriculums == freezed
          ? _value.curriculums
          : curriculums as List<CurriculumModel>,
      semesters: semesters == freezed
          ? _value.semesters
          : semesters as List<SemesterModel>,
      semester: semester == freezed ? _value.semester : semester as String,
      semesterValue: semesterValue == freezed
          ? _value.semesterValue
          : semesterValue as String,
      year: year == freezed ? _value.year : year as int,
      isCurrent: isCurrent == freezed ? _value.isCurrent : isCurrent as bool,
    ));
  }
}

abstract class _$TimeTableModelCopyWith<$Res>
    implements $TimeTableModelCopyWith<$Res> {
  factory _$TimeTableModelCopyWith(
          _TimeTableModel value, $Res Function(_TimeTableModel) then) =
      __$TimeTableModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CurriculumModel> curriculums,
      List<SemesterModel> semesters,
      String semester,
      String semesterValue,
      int year,
      bool isCurrent});
}

class __$TimeTableModelCopyWithImpl<$Res>
    extends _$TimeTableModelCopyWithImpl<$Res>
    implements _$TimeTableModelCopyWith<$Res> {
  __$TimeTableModelCopyWithImpl(
      _TimeTableModel _value, $Res Function(_TimeTableModel) _then)
      : super(_value, (v) => _then(v as _TimeTableModel));

  @override
  _TimeTableModel get _value => super._value as _TimeTableModel;

  @override
  $Res call({
    Object curriculums = freezed,
    Object semesters = freezed,
    Object semester = freezed,
    Object semesterValue = freezed,
    Object year = freezed,
    Object isCurrent = freezed,
  }) {
    return _then(_TimeTableModel(
      curriculums: curriculums == freezed
          ? _value.curriculums
          : curriculums as List<CurriculumModel>,
      semesters: semesters == freezed
          ? _value.semesters
          : semesters as List<SemesterModel>,
      semester: semester == freezed ? _value.semester : semester as String,
      semesterValue: semesterValue == freezed
          ? _value.semesterValue
          : semesterValue as String,
      year: year == freezed ? _value.year : year as int,
      isCurrent: isCurrent == freezed ? _value.isCurrent : isCurrent as bool,
    ));
  }
}

@JsonSerializable()
class _$_TimeTableModel extends _TimeTableModel {
  const _$_TimeTableModel(
      {@required this.curriculums,
      @required this.semesters,
      @required this.semester,
      @required this.semesterValue,
      @required this.year,
      @required this.isCurrent})
      : assert(curriculums != null),
        assert(semesters != null),
        assert(semester != null),
        assert(semesterValue != null),
        assert(year != null),
        assert(isCurrent != null),
        super._();

  factory _$_TimeTableModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TimeTableModelFromJson(json);

  @override
  final List<CurriculumModel> curriculums;
  @override
  final List<SemesterModel> semesters;
  @override
  final String semester;
  @override
  final String semesterValue;
  @override
  final int year;
  @override
  final bool isCurrent;

  @override
  String toString() {
    return 'TimeTableModel(curriculums: $curriculums, semesters: $semesters, semester: $semester, semesterValue: $semesterValue, year: $year, isCurrent: $isCurrent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeTableModel &&
            (identical(other.curriculums, curriculums) ||
                const DeepCollectionEquality()
                    .equals(other.curriculums, curriculums)) &&
            (identical(other.semesters, semesters) ||
                const DeepCollectionEquality()
                    .equals(other.semesters, semesters)) &&
            (identical(other.semester, semester) ||
                const DeepCollectionEquality()
                    .equals(other.semester, semester)) &&
            (identical(other.semesterValue, semesterValue) ||
                const DeepCollectionEquality()
                    .equals(other.semesterValue, semesterValue)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.isCurrent, isCurrent) ||
                const DeepCollectionEquality()
                    .equals(other.isCurrent, isCurrent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(curriculums) ^
      const DeepCollectionEquality().hash(semesters) ^
      const DeepCollectionEquality().hash(semester) ^
      const DeepCollectionEquality().hash(semesterValue) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(isCurrent);

  @override
  _$TimeTableModelCopyWith<_TimeTableModel> get copyWith =>
      __$TimeTableModelCopyWithImpl<_TimeTableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimeTableModelToJson(this);
  }
}

abstract class _TimeTableModel extends TimeTableModel {
  const _TimeTableModel._() : super._();
  const factory _TimeTableModel(
      {@required List<CurriculumModel> curriculums,
      @required List<SemesterModel> semesters,
      @required String semester,
      @required String semesterValue,
      @required int year,
      @required bool isCurrent}) = _$_TimeTableModel;

  factory _TimeTableModel.fromJson(Map<String, dynamic> json) =
      _$_TimeTableModel.fromJson;

  @override
  List<CurriculumModel> get curriculums;
  @override
  List<SemesterModel> get semesters;
  @override
  String get semester;
  @override
  String get semesterValue;
  @override
  int get year;
  @override
  bool get isCurrent;
  @override
  _$TimeTableModelCopyWith<_TimeTableModel> get copyWith;
}
