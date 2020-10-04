// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'grade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GradeModel _$GradeModelFromJson(Map<String, dynamic> json) {
  return _GradeModel.fromJson(json);
}

/// @nodoc
class _$GradeModelTearOff {
  const _$GradeModelTearOff();

// ignore: unused_element
  _GradeModel call(
      {@required String course,
      @required String subject,
      @required String semester,
      @required String code,
      @required @nullable int day,
      @required List<int> periods,
      @required String teacher,
      @required int year,
      @required int people,
      @required double s,
      @required double a,
      @required double b,
      @required double c,
      @required double d,
      @required int page,
      @required bool hasDetail}) {
    return _GradeModel(
      course: course,
      subject: subject,
      semester: semester,
      code: code,
      day: day,
      periods: periods,
      teacher: teacher,
      year: year,
      people: people,
      s: s,
      a: a,
      b: b,
      c: c,
      d: d,
      page: page,
      hasDetail: hasDetail,
    );
  }

// ignore: unused_element
  GradeModel fromJson(Map<String, Object> json) {
    return GradeModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GradeModel = _$GradeModelTearOff();

/// @nodoc
mixin _$GradeModel {
  String get course;
  String get subject;
  String get semester;
  String get code;
  @nullable
  int get day;
  List<int> get periods;
  String get teacher;
  int get year;
  int get people;
  double get s;
  double get a;
  double get b;
  double get c;
  double get d;
  int get page;
  bool get hasDetail;

  Map<String, dynamic> toJson();
  $GradeModelCopyWith<GradeModel> get copyWith;
}

/// @nodoc
abstract class $GradeModelCopyWith<$Res> {
  factory $GradeModelCopyWith(
          GradeModel value, $Res Function(GradeModel) then) =
      _$GradeModelCopyWithImpl<$Res>;
  $Res call(
      {String course,
      String subject,
      String semester,
      String code,
      @nullable int day,
      List<int> periods,
      String teacher,
      int year,
      int people,
      double s,
      double a,
      double b,
      double c,
      double d,
      int page,
      bool hasDetail});
}

/// @nodoc
class _$GradeModelCopyWithImpl<$Res> implements $GradeModelCopyWith<$Res> {
  _$GradeModelCopyWithImpl(this._value, this._then);

  final GradeModel _value;
  // ignore: unused_field
  final $Res Function(GradeModel) _then;

  @override
  $Res call({
    Object course = freezed,
    Object subject = freezed,
    Object semester = freezed,
    Object code = freezed,
    Object day = freezed,
    Object periods = freezed,
    Object teacher = freezed,
    Object year = freezed,
    Object people = freezed,
    Object s = freezed,
    Object a = freezed,
    Object b = freezed,
    Object c = freezed,
    Object d = freezed,
    Object page = freezed,
    Object hasDetail = freezed,
  }) {
    return _then(_value.copyWith(
      course: course == freezed ? _value.course : course as String,
      subject: subject == freezed ? _value.subject : subject as String,
      semester: semester == freezed ? _value.semester : semester as String,
      code: code == freezed ? _value.code : code as String,
      day: day == freezed ? _value.day : day as int,
      periods: periods == freezed ? _value.periods : periods as List<int>,
      teacher: teacher == freezed ? _value.teacher : teacher as String,
      year: year == freezed ? _value.year : year as int,
      people: people == freezed ? _value.people : people as int,
      s: s == freezed ? _value.s : s as double,
      a: a == freezed ? _value.a : a as double,
      b: b == freezed ? _value.b : b as double,
      c: c == freezed ? _value.c : c as double,
      d: d == freezed ? _value.d : d as double,
      page: page == freezed ? _value.page : page as int,
      hasDetail: hasDetail == freezed ? _value.hasDetail : hasDetail as bool,
    ));
  }
}

/// @nodoc
abstract class _$GradeModelCopyWith<$Res> implements $GradeModelCopyWith<$Res> {
  factory _$GradeModelCopyWith(
          _GradeModel value, $Res Function(_GradeModel) then) =
      __$GradeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String course,
      String subject,
      String semester,
      String code,
      @nullable int day,
      List<int> periods,
      String teacher,
      int year,
      int people,
      double s,
      double a,
      double b,
      double c,
      double d,
      int page,
      bool hasDetail});
}

/// @nodoc
class __$GradeModelCopyWithImpl<$Res> extends _$GradeModelCopyWithImpl<$Res>
    implements _$GradeModelCopyWith<$Res> {
  __$GradeModelCopyWithImpl(
      _GradeModel _value, $Res Function(_GradeModel) _then)
      : super(_value, (v) => _then(v as _GradeModel));

  @override
  _GradeModel get _value => super._value as _GradeModel;

  @override
  $Res call({
    Object course = freezed,
    Object subject = freezed,
    Object semester = freezed,
    Object code = freezed,
    Object day = freezed,
    Object periods = freezed,
    Object teacher = freezed,
    Object year = freezed,
    Object people = freezed,
    Object s = freezed,
    Object a = freezed,
    Object b = freezed,
    Object c = freezed,
    Object d = freezed,
    Object page = freezed,
    Object hasDetail = freezed,
  }) {
    return _then(_GradeModel(
      course: course == freezed ? _value.course : course as String,
      subject: subject == freezed ? _value.subject : subject as String,
      semester: semester == freezed ? _value.semester : semester as String,
      code: code == freezed ? _value.code : code as String,
      day: day == freezed ? _value.day : day as int,
      periods: periods == freezed ? _value.periods : periods as List<int>,
      teacher: teacher == freezed ? _value.teacher : teacher as String,
      year: year == freezed ? _value.year : year as int,
      people: people == freezed ? _value.people : people as int,
      s: s == freezed ? _value.s : s as double,
      a: a == freezed ? _value.a : a as double,
      b: b == freezed ? _value.b : b as double,
      c: c == freezed ? _value.c : c as double,
      d: d == freezed ? _value.d : d as double,
      page: page == freezed ? _value.page : page as int,
      hasDetail: hasDetail == freezed ? _value.hasDetail : hasDetail as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GradeModel extends _GradeModel {
  const _$_GradeModel(
      {@required this.course,
      @required this.subject,
      @required this.semester,
      @required this.code,
      @required @nullable this.day,
      @required this.periods,
      @required this.teacher,
      @required this.year,
      @required this.people,
      @required this.s,
      @required this.a,
      @required this.b,
      @required this.c,
      @required this.d,
      @required this.page,
      @required this.hasDetail})
      : assert(course != null),
        assert(subject != null),
        assert(semester != null),
        assert(code != null),
        assert(periods != null),
        assert(teacher != null),
        assert(year != null),
        assert(people != null),
        assert(s != null),
        assert(a != null),
        assert(b != null),
        assert(c != null),
        assert(d != null),
        assert(page != null),
        assert(hasDetail != null),
        super._();

  factory _$_GradeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GradeModelFromJson(json);

  @override
  final String course;
  @override
  final String subject;
  @override
  final String semester;
  @override
  final String code;
  @override
  @nullable
  final int day;
  @override
  final List<int> periods;
  @override
  final String teacher;
  @override
  final int year;
  @override
  final int people;
  @override
  final double s;
  @override
  final double a;
  @override
  final double b;
  @override
  final double c;
  @override
  final double d;
  @override
  final int page;
  @override
  final bool hasDetail;

  @override
  String toString() {
    return 'GradeModel(course: $course, subject: $subject, semester: $semester, code: $code, day: $day, periods: $periods, teacher: $teacher, year: $year, people: $people, s: $s, a: $a, b: $b, c: $c, d: $d, page: $page, hasDetail: $hasDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradeModel &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.semester, semester) ||
                const DeepCollectionEquality()
                    .equals(other.semester, semester)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.periods, periods) ||
                const DeepCollectionEquality()
                    .equals(other.periods, periods)) &&
            (identical(other.teacher, teacher) ||
                const DeepCollectionEquality()
                    .equals(other.teacher, teacher)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.people, people) ||
                const DeepCollectionEquality().equals(other.people, people)) &&
            (identical(other.s, s) ||
                const DeepCollectionEquality().equals(other.s, s)) &&
            (identical(other.a, a) ||
                const DeepCollectionEquality().equals(other.a, a)) &&
            (identical(other.b, b) ||
                const DeepCollectionEquality().equals(other.b, b)) &&
            (identical(other.c, c) ||
                const DeepCollectionEquality().equals(other.c, c)) &&
            (identical(other.d, d) ||
                const DeepCollectionEquality().equals(other.d, d)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.hasDetail, hasDetail) ||
                const DeepCollectionEquality()
                    .equals(other.hasDetail, hasDetail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(semester) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(periods) ^
      const DeepCollectionEquality().hash(teacher) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(people) ^
      const DeepCollectionEquality().hash(s) ^
      const DeepCollectionEquality().hash(a) ^
      const DeepCollectionEquality().hash(b) ^
      const DeepCollectionEquality().hash(c) ^
      const DeepCollectionEquality().hash(d) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(hasDetail);

  @override
  _$GradeModelCopyWith<_GradeModel> get copyWith =>
      __$GradeModelCopyWithImpl<_GradeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GradeModelToJson(this);
  }
}

abstract class _GradeModel extends GradeModel {
  const _GradeModel._() : super._();
  const factory _GradeModel(
      {@required String course,
      @required String subject,
      @required String semester,
      @required String code,
      @required @nullable int day,
      @required List<int> periods,
      @required String teacher,
      @required int year,
      @required int people,
      @required double s,
      @required double a,
      @required double b,
      @required double c,
      @required double d,
      @required int page,
      @required bool hasDetail}) = _$_GradeModel;

  factory _GradeModel.fromJson(Map<String, dynamic> json) =
      _$_GradeModel.fromJson;

  @override
  String get course;
  @override
  String get subject;
  @override
  String get semester;
  @override
  String get code;
  @override
  @nullable
  int get day;
  @override
  List<int> get periods;
  @override
  String get teacher;
  @override
  int get year;
  @override
  int get people;
  @override
  double get s;
  @override
  double get a;
  @override
  double get b;
  @override
  double get c;
  @override
  double get d;
  @override
  int get page;
  @override
  bool get hasDetail;
  @override
  _$GradeModelCopyWith<_GradeModel> get copyWith;
}
