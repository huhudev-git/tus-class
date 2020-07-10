// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'syllabus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SyllabusModel _$SyllabusModelFromJson(Map<String, dynamic> json) {
  return _SyllabusModel.fromJson(json);
}

class _$SyllabusModelTearOff {
  const _$SyllabusModelTearOff();

  _SyllabusModel call(
      {@required String code,
      @required String course,
      @required String teacher,
      @required String semester,
      @required String subject,
      @required String type,
      @required int page,
      @required int year,
      @required @nullable int day,
      @required List<int> periods}) {
    return _SyllabusModel(
      code: code,
      course: course,
      teacher: teacher,
      semester: semester,
      subject: subject,
      type: type,
      page: page,
      year: year,
      day: day,
      periods: periods,
    );
  }
}

// ignore: unused_element
const $SyllabusModel = _$SyllabusModelTearOff();

mixin _$SyllabusModel {
  String get code;
  String get course;
  String get teacher;
  String get semester;
  String get subject;
  String get type;
  int get page;
  int get year;
  @nullable
  int get day;
  List<int> get periods;

  Map<String, dynamic> toJson();
  $SyllabusModelCopyWith<SyllabusModel> get copyWith;
}

abstract class $SyllabusModelCopyWith<$Res> {
  factory $SyllabusModelCopyWith(
          SyllabusModel value, $Res Function(SyllabusModel) then) =
      _$SyllabusModelCopyWithImpl<$Res>;
  $Res call(
      {String code,
      String course,
      String teacher,
      String semester,
      String subject,
      String type,
      int page,
      int year,
      @nullable int day,
      List<int> periods});
}

class _$SyllabusModelCopyWithImpl<$Res>
    implements $SyllabusModelCopyWith<$Res> {
  _$SyllabusModelCopyWithImpl(this._value, this._then);

  final SyllabusModel _value;
  // ignore: unused_field
  final $Res Function(SyllabusModel) _then;

  @override
  $Res call({
    Object code = freezed,
    Object course = freezed,
    Object teacher = freezed,
    Object semester = freezed,
    Object subject = freezed,
    Object type = freezed,
    Object page = freezed,
    Object year = freezed,
    Object day = freezed,
    Object periods = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      course: course == freezed ? _value.course : course as String,
      teacher: teacher == freezed ? _value.teacher : teacher as String,
      semester: semester == freezed ? _value.semester : semester as String,
      subject: subject == freezed ? _value.subject : subject as String,
      type: type == freezed ? _value.type : type as String,
      page: page == freezed ? _value.page : page as int,
      year: year == freezed ? _value.year : year as int,
      day: day == freezed ? _value.day : day as int,
      periods: periods == freezed ? _value.periods : periods as List<int>,
    ));
  }
}

abstract class _$SyllabusModelCopyWith<$Res>
    implements $SyllabusModelCopyWith<$Res> {
  factory _$SyllabusModelCopyWith(
          _SyllabusModel value, $Res Function(_SyllabusModel) then) =
      __$SyllabusModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      String course,
      String teacher,
      String semester,
      String subject,
      String type,
      int page,
      int year,
      @nullable int day,
      List<int> periods});
}

class __$SyllabusModelCopyWithImpl<$Res>
    extends _$SyllabusModelCopyWithImpl<$Res>
    implements _$SyllabusModelCopyWith<$Res> {
  __$SyllabusModelCopyWithImpl(
      _SyllabusModel _value, $Res Function(_SyllabusModel) _then)
      : super(_value, (v) => _then(v as _SyllabusModel));

  @override
  _SyllabusModel get _value => super._value as _SyllabusModel;

  @override
  $Res call({
    Object code = freezed,
    Object course = freezed,
    Object teacher = freezed,
    Object semester = freezed,
    Object subject = freezed,
    Object type = freezed,
    Object page = freezed,
    Object year = freezed,
    Object day = freezed,
    Object periods = freezed,
  }) {
    return _then(_SyllabusModel(
      code: code == freezed ? _value.code : code as String,
      course: course == freezed ? _value.course : course as String,
      teacher: teacher == freezed ? _value.teacher : teacher as String,
      semester: semester == freezed ? _value.semester : semester as String,
      subject: subject == freezed ? _value.subject : subject as String,
      type: type == freezed ? _value.type : type as String,
      page: page == freezed ? _value.page : page as int,
      year: year == freezed ? _value.year : year as int,
      day: day == freezed ? _value.day : day as int,
      periods: periods == freezed ? _value.periods : periods as List<int>,
    ));
  }
}

@JsonSerializable()
class _$_SyllabusModel extends _SyllabusModel {
  const _$_SyllabusModel(
      {@required this.code,
      @required this.course,
      @required this.teacher,
      @required this.semester,
      @required this.subject,
      @required this.type,
      @required this.page,
      @required this.year,
      @required @nullable this.day,
      @required this.periods})
      : assert(code != null),
        assert(course != null),
        assert(teacher != null),
        assert(semester != null),
        assert(subject != null),
        assert(type != null),
        assert(page != null),
        assert(year != null),
        assert(periods != null),
        super._();

  factory _$_SyllabusModel.fromJson(Map<String, dynamic> json) =>
      _$_$_SyllabusModelFromJson(json);

  @override
  final String code;
  @override
  final String course;
  @override
  final String teacher;
  @override
  final String semester;
  @override
  final String subject;
  @override
  final String type;
  @override
  final int page;
  @override
  final int year;
  @override
  @nullable
  final int day;
  @override
  final List<int> periods;

  @override
  String toString() {
    return 'SyllabusModel(code: $code, course: $course, teacher: $teacher, semester: $semester, subject: $subject, type: $type, page: $page, year: $year, day: $day, periods: $periods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SyllabusModel &&
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
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.periods, periods) ||
                const DeepCollectionEquality().equals(other.periods, periods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(teacher) ^
      const DeepCollectionEquality().hash(semester) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(periods);

  @override
  _$SyllabusModelCopyWith<_SyllabusModel> get copyWith =>
      __$SyllabusModelCopyWithImpl<_SyllabusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SyllabusModelToJson(this);
  }
}

abstract class _SyllabusModel extends SyllabusModel {
  const _SyllabusModel._() : super._();
  const factory _SyllabusModel(
      {@required String code,
      @required String course,
      @required String teacher,
      @required String semester,
      @required String subject,
      @required String type,
      @required int page,
      @required int year,
      @required @nullable int day,
      @required List<int> periods}) = _$_SyllabusModel;

  factory _SyllabusModel.fromJson(Map<String, dynamic> json) =
      _$_SyllabusModel.fromJson;

  @override
  String get code;
  @override
  String get course;
  @override
  String get teacher;
  @override
  String get semester;
  @override
  String get subject;
  @override
  String get type;
  @override
  int get page;
  @override
  int get year;
  @override
  @nullable
  int get day;
  @override
  List<int> get periods;
  @override
  _$SyllabusModelCopyWith<_SyllabusModel> get copyWith;
}
