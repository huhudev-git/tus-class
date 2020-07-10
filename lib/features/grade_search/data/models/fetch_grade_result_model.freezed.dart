// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fetch_grade_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FetchGradeResultModel _$FetchGradeResultModelFromJson(
    Map<String, dynamic> json) {
  return _FetchGradeResultModel.fromJson(json);
}

class _$FetchGradeResultModelTearOff {
  const _$FetchGradeResultModelTearOff();

  _FetchGradeResultModel call(
      {@required List<GradeModel> grades, @required bool isLastPage}) {
    return _FetchGradeResultModel(
      grades: grades,
      isLastPage: isLastPage,
    );
  }
}

// ignore: unused_element
const $FetchGradeResultModel = _$FetchGradeResultModelTearOff();

mixin _$FetchGradeResultModel {
  List<GradeModel> get grades;
  bool get isLastPage;

  Map<String, dynamic> toJson();
  $FetchGradeResultModelCopyWith<FetchGradeResultModel> get copyWith;
}

abstract class $FetchGradeResultModelCopyWith<$Res> {
  factory $FetchGradeResultModelCopyWith(FetchGradeResultModel value,
          $Res Function(FetchGradeResultModel) then) =
      _$FetchGradeResultModelCopyWithImpl<$Res>;
  $Res call({List<GradeModel> grades, bool isLastPage});
}

class _$FetchGradeResultModelCopyWithImpl<$Res>
    implements $FetchGradeResultModelCopyWith<$Res> {
  _$FetchGradeResultModelCopyWithImpl(this._value, this._then);

  final FetchGradeResultModel _value;
  // ignore: unused_field
  final $Res Function(FetchGradeResultModel) _then;

  @override
  $Res call({
    Object grades = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(_value.copyWith(
      grades: grades == freezed ? _value.grades : grades as List<GradeModel>,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

abstract class _$FetchGradeResultModelCopyWith<$Res>
    implements $FetchGradeResultModelCopyWith<$Res> {
  factory _$FetchGradeResultModelCopyWith(_FetchGradeResultModel value,
          $Res Function(_FetchGradeResultModel) then) =
      __$FetchGradeResultModelCopyWithImpl<$Res>;
  @override
  $Res call({List<GradeModel> grades, bool isLastPage});
}

class __$FetchGradeResultModelCopyWithImpl<$Res>
    extends _$FetchGradeResultModelCopyWithImpl<$Res>
    implements _$FetchGradeResultModelCopyWith<$Res> {
  __$FetchGradeResultModelCopyWithImpl(_FetchGradeResultModel _value,
      $Res Function(_FetchGradeResultModel) _then)
      : super(_value, (v) => _then(v as _FetchGradeResultModel));

  @override
  _FetchGradeResultModel get _value => super._value as _FetchGradeResultModel;

  @override
  $Res call({
    Object grades = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(_FetchGradeResultModel(
      grades: grades == freezed ? _value.grades : grades as List<GradeModel>,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

@JsonSerializable()
class _$_FetchGradeResultModel extends _FetchGradeResultModel {
  const _$_FetchGradeResultModel(
      {@required this.grades, @required this.isLastPage})
      : assert(grades != null),
        assert(isLastPage != null),
        super._();

  factory _$_FetchGradeResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FetchGradeResultModelFromJson(json);

  @override
  final List<GradeModel> grades;
  @override
  final bool isLastPage;

  @override
  String toString() {
    return 'FetchGradeResultModel(grades: $grades, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchGradeResultModel &&
            (identical(other.grades, grades) ||
                const DeepCollectionEquality().equals(other.grades, grades)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(grades) ^
      const DeepCollectionEquality().hash(isLastPage);

  @override
  _$FetchGradeResultModelCopyWith<_FetchGradeResultModel> get copyWith =>
      __$FetchGradeResultModelCopyWithImpl<_FetchGradeResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FetchGradeResultModelToJson(this);
  }
}

abstract class _FetchGradeResultModel extends FetchGradeResultModel {
  const _FetchGradeResultModel._() : super._();
  const factory _FetchGradeResultModel(
      {@required List<GradeModel> grades,
      @required bool isLastPage}) = _$_FetchGradeResultModel;

  factory _FetchGradeResultModel.fromJson(Map<String, dynamic> json) =
      _$_FetchGradeResultModel.fromJson;

  @override
  List<GradeModel> get grades;
  @override
  bool get isLastPage;
  @override
  _$FetchGradeResultModelCopyWith<_FetchGradeResultModel> get copyWith;
}
