// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grade_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GradeModel _$GradeModelFromJson(Map<String, dynamic> json) {
  return _GradeModel.fromJson(json);
}

class _$GradeModelTearOff {
  const _$GradeModelTearOff();

  _GradeModel call(
      {@required String course,
      @required double credit,
      @required String evaluation,
      @required double g,
      @required double gp,
      @required int year,
      @required String category}) {
    return _GradeModel(
      course: course,
      credit: credit,
      evaluation: evaluation,
      g: g,
      gp: gp,
      year: year,
      category: category,
    );
  }
}

// ignore: unused_element
const $GradeModel = _$GradeModelTearOff();

mixin _$GradeModel {
  String get course;
  double get credit;
  String get evaluation;
  double get g;
  double get gp;
  int get year;
  String get category;

  Map<String, dynamic> toJson();
  $GradeModelCopyWith<GradeModel> get copyWith;
}

abstract class $GradeModelCopyWith<$Res> {
  factory $GradeModelCopyWith(
          GradeModel value, $Res Function(GradeModel) then) =
      _$GradeModelCopyWithImpl<$Res>;
  $Res call(
      {String course,
      double credit,
      String evaluation,
      double g,
      double gp,
      int year,
      String category});
}

class _$GradeModelCopyWithImpl<$Res> implements $GradeModelCopyWith<$Res> {
  _$GradeModelCopyWithImpl(this._value, this._then);

  final GradeModel _value;
  // ignore: unused_field
  final $Res Function(GradeModel) _then;

  @override
  $Res call({
    Object course = freezed,
    Object credit = freezed,
    Object evaluation = freezed,
    Object g = freezed,
    Object gp = freezed,
    Object year = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      course: course == freezed ? _value.course : course as String,
      credit: credit == freezed ? _value.credit : credit as double,
      evaluation:
          evaluation == freezed ? _value.evaluation : evaluation as String,
      g: g == freezed ? _value.g : g as double,
      gp: gp == freezed ? _value.gp : gp as double,
      year: year == freezed ? _value.year : year as int,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

abstract class _$GradeModelCopyWith<$Res> implements $GradeModelCopyWith<$Res> {
  factory _$GradeModelCopyWith(
          _GradeModel value, $Res Function(_GradeModel) then) =
      __$GradeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String course,
      double credit,
      String evaluation,
      double g,
      double gp,
      int year,
      String category});
}

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
    Object credit = freezed,
    Object evaluation = freezed,
    Object g = freezed,
    Object gp = freezed,
    Object year = freezed,
    Object category = freezed,
  }) {
    return _then(_GradeModel(
      course: course == freezed ? _value.course : course as String,
      credit: credit == freezed ? _value.credit : credit as double,
      evaluation:
          evaluation == freezed ? _value.evaluation : evaluation as String,
      g: g == freezed ? _value.g : g as double,
      gp: gp == freezed ? _value.gp : gp as double,
      year: year == freezed ? _value.year : year as int,
      category: category == freezed ? _value.category : category as String,
    ));
  }
}

@JsonSerializable()
class _$_GradeModel extends _GradeModel {
  const _$_GradeModel(
      {@required this.course,
      @required this.credit,
      @required this.evaluation,
      @required this.g,
      @required this.gp,
      @required this.year,
      @required this.category})
      : assert(course != null),
        assert(credit != null),
        assert(evaluation != null),
        assert(g != null),
        assert(gp != null),
        assert(year != null),
        assert(category != null),
        super._();

  factory _$_GradeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GradeModelFromJson(json);

  @override
  final String course;
  @override
  final double credit;
  @override
  final String evaluation;
  @override
  final double g;
  @override
  final double gp;
  @override
  final int year;
  @override
  final String category;

  @override
  String toString() {
    return 'GradeModel(course: $course, credit: $credit, evaluation: $evaluation, g: $g, gp: $gp, year: $year, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradeModel &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.credit, credit) ||
                const DeepCollectionEquality().equals(other.credit, credit)) &&
            (identical(other.evaluation, evaluation) ||
                const DeepCollectionEquality()
                    .equals(other.evaluation, evaluation)) &&
            (identical(other.g, g) ||
                const DeepCollectionEquality().equals(other.g, g)) &&
            (identical(other.gp, gp) ||
                const DeepCollectionEquality().equals(other.gp, gp)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(credit) ^
      const DeepCollectionEquality().hash(evaluation) ^
      const DeepCollectionEquality().hash(g) ^
      const DeepCollectionEquality().hash(gp) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(category);

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
      @required double credit,
      @required String evaluation,
      @required double g,
      @required double gp,
      @required int year,
      @required String category}) = _$_GradeModel;

  factory _GradeModel.fromJson(Map<String, dynamic> json) =
      _$_GradeModel.fromJson;

  @override
  String get course;
  @override
  double get credit;
  @override
  String get evaluation;
  @override
  double get g;
  @override
  double get gp;
  @override
  int get year;
  @override
  String get category;
  @override
  _$GradeModelCopyWith<_GradeModel> get copyWith;
}
