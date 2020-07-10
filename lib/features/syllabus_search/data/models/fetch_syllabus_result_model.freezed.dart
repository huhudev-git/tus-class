// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fetch_syllabus_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FetchSyllabusResultModel _$FetchSyllabusResultModelFromJson(
    Map<String, dynamic> json) {
  return _FetchSyllabusResultModel.fromJson(json);
}

class _$FetchSyllabusResultModelTearOff {
  const _$FetchSyllabusResultModelTearOff();

  _FetchSyllabusResultModel call(
      {@required List<SyllabusModel> syllabusList, @required bool isLastPage}) {
    return _FetchSyllabusResultModel(
      syllabusList: syllabusList,
      isLastPage: isLastPage,
    );
  }
}

// ignore: unused_element
const $FetchSyllabusResultModel = _$FetchSyllabusResultModelTearOff();

mixin _$FetchSyllabusResultModel {
  List<SyllabusModel> get syllabusList;
  bool get isLastPage;

  Map<String, dynamic> toJson();
  $FetchSyllabusResultModelCopyWith<FetchSyllabusResultModel> get copyWith;
}

abstract class $FetchSyllabusResultModelCopyWith<$Res> {
  factory $FetchSyllabusResultModelCopyWith(FetchSyllabusResultModel value,
          $Res Function(FetchSyllabusResultModel) then) =
      _$FetchSyllabusResultModelCopyWithImpl<$Res>;
  $Res call({List<SyllabusModel> syllabusList, bool isLastPage});
}

class _$FetchSyllabusResultModelCopyWithImpl<$Res>
    implements $FetchSyllabusResultModelCopyWith<$Res> {
  _$FetchSyllabusResultModelCopyWithImpl(this._value, this._then);

  final FetchSyllabusResultModel _value;
  // ignore: unused_field
  final $Res Function(FetchSyllabusResultModel) _then;

  @override
  $Res call({
    Object syllabusList = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(_value.copyWith(
      syllabusList: syllabusList == freezed
          ? _value.syllabusList
          : syllabusList as List<SyllabusModel>,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

abstract class _$FetchSyllabusResultModelCopyWith<$Res>
    implements $FetchSyllabusResultModelCopyWith<$Res> {
  factory _$FetchSyllabusResultModelCopyWith(_FetchSyllabusResultModel value,
          $Res Function(_FetchSyllabusResultModel) then) =
      __$FetchSyllabusResultModelCopyWithImpl<$Res>;
  @override
  $Res call({List<SyllabusModel> syllabusList, bool isLastPage});
}

class __$FetchSyllabusResultModelCopyWithImpl<$Res>
    extends _$FetchSyllabusResultModelCopyWithImpl<$Res>
    implements _$FetchSyllabusResultModelCopyWith<$Res> {
  __$FetchSyllabusResultModelCopyWithImpl(_FetchSyllabusResultModel _value,
      $Res Function(_FetchSyllabusResultModel) _then)
      : super(_value, (v) => _then(v as _FetchSyllabusResultModel));

  @override
  _FetchSyllabusResultModel get _value =>
      super._value as _FetchSyllabusResultModel;

  @override
  $Res call({
    Object syllabusList = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(_FetchSyllabusResultModel(
      syllabusList: syllabusList == freezed
          ? _value.syllabusList
          : syllabusList as List<SyllabusModel>,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

@JsonSerializable()
class _$_FetchSyllabusResultModel extends _FetchSyllabusResultModel {
  const _$_FetchSyllabusResultModel(
      {@required this.syllabusList, @required this.isLastPage})
      : assert(syllabusList != null),
        assert(isLastPage != null),
        super._();

  factory _$_FetchSyllabusResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FetchSyllabusResultModelFromJson(json);

  @override
  final List<SyllabusModel> syllabusList;
  @override
  final bool isLastPage;

  @override
  String toString() {
    return 'FetchSyllabusResultModel(syllabusList: $syllabusList, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSyllabusResultModel &&
            (identical(other.syllabusList, syllabusList) ||
                const DeepCollectionEquality()
                    .equals(other.syllabusList, syllabusList)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(syllabusList) ^
      const DeepCollectionEquality().hash(isLastPage);

  @override
  _$FetchSyllabusResultModelCopyWith<_FetchSyllabusResultModel> get copyWith =>
      __$FetchSyllabusResultModelCopyWithImpl<_FetchSyllabusResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FetchSyllabusResultModelToJson(this);
  }
}

abstract class _FetchSyllabusResultModel extends FetchSyllabusResultModel {
  const _FetchSyllabusResultModel._() : super._();
  const factory _FetchSyllabusResultModel(
      {@required List<SyllabusModel> syllabusList,
      @required bool isLastPage}) = _$_FetchSyllabusResultModel;

  factory _FetchSyllabusResultModel.fromJson(Map<String, dynamic> json) =
      _$_FetchSyllabusResultModel.fromJson;

  @override
  List<SyllabusModel> get syllabusList;
  @override
  bool get isLastPage;
  @override
  _$FetchSyllabusResultModelCopyWith<_FetchSyllabusResultModel> get copyWith;
}
