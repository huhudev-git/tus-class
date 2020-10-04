// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'curriculum_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CurriculumSettingModel _$CurriculumSettingModelFromJson(
    Map<String, dynamic> json) {
  return _CurriculumSettingModel.fromJson(json);
}

/// @nodoc
class _$CurriculumSettingModelTearOff {
  const _$CurriculumSettingModelTearOff();

// ignore: unused_element
  _CurriculumSettingModel call(
      {@required String course,
      @required String code,
      @required String form,
      @required String room,
      @required String department,
      @required String category,
      @required String subject,
      @required String grade}) {
    return _CurriculumSettingModel(
      course: course,
      code: code,
      form: form,
      room: room,
      department: department,
      category: category,
      subject: subject,
      grade: grade,
    );
  }

// ignore: unused_element
  CurriculumSettingModel fromJson(Map<String, Object> json) {
    return CurriculumSettingModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CurriculumSettingModel = _$CurriculumSettingModelTearOff();

/// @nodoc
mixin _$CurriculumSettingModel {
  String get course;
  String get code;
  String get form;
  String get room;
  String get department;
  String get category;
  String get subject;
  String get grade;

  Map<String, dynamic> toJson();
  $CurriculumSettingModelCopyWith<CurriculumSettingModel> get copyWith;
}

/// @nodoc
abstract class $CurriculumSettingModelCopyWith<$Res> {
  factory $CurriculumSettingModelCopyWith(CurriculumSettingModel value,
          $Res Function(CurriculumSettingModel) then) =
      _$CurriculumSettingModelCopyWithImpl<$Res>;
  $Res call(
      {String course,
      String code,
      String form,
      String room,
      String department,
      String category,
      String subject,
      String grade});
}

/// @nodoc
class _$CurriculumSettingModelCopyWithImpl<$Res>
    implements $CurriculumSettingModelCopyWith<$Res> {
  _$CurriculumSettingModelCopyWithImpl(this._value, this._then);

  final CurriculumSettingModel _value;
  // ignore: unused_field
  final $Res Function(CurriculumSettingModel) _then;

  @override
  $Res call({
    Object course = freezed,
    Object code = freezed,
    Object form = freezed,
    Object room = freezed,
    Object department = freezed,
    Object category = freezed,
    Object subject = freezed,
    Object grade = freezed,
  }) {
    return _then(_value.copyWith(
      course: course == freezed ? _value.course : course as String,
      code: code == freezed ? _value.code : code as String,
      form: form == freezed ? _value.form : form as String,
      room: room == freezed ? _value.room : room as String,
      department:
          department == freezed ? _value.department : department as String,
      category: category == freezed ? _value.category : category as String,
      subject: subject == freezed ? _value.subject : subject as String,
      grade: grade == freezed ? _value.grade : grade as String,
    ));
  }
}

/// @nodoc
abstract class _$CurriculumSettingModelCopyWith<$Res>
    implements $CurriculumSettingModelCopyWith<$Res> {
  factory _$CurriculumSettingModelCopyWith(_CurriculumSettingModel value,
          $Res Function(_CurriculumSettingModel) then) =
      __$CurriculumSettingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String course,
      String code,
      String form,
      String room,
      String department,
      String category,
      String subject,
      String grade});
}

/// @nodoc
class __$CurriculumSettingModelCopyWithImpl<$Res>
    extends _$CurriculumSettingModelCopyWithImpl<$Res>
    implements _$CurriculumSettingModelCopyWith<$Res> {
  __$CurriculumSettingModelCopyWithImpl(_CurriculumSettingModel _value,
      $Res Function(_CurriculumSettingModel) _then)
      : super(_value, (v) => _then(v as _CurriculumSettingModel));

  @override
  _CurriculumSettingModel get _value => super._value as _CurriculumSettingModel;

  @override
  $Res call({
    Object course = freezed,
    Object code = freezed,
    Object form = freezed,
    Object room = freezed,
    Object department = freezed,
    Object category = freezed,
    Object subject = freezed,
    Object grade = freezed,
  }) {
    return _then(_CurriculumSettingModel(
      course: course == freezed ? _value.course : course as String,
      code: code == freezed ? _value.code : code as String,
      form: form == freezed ? _value.form : form as String,
      room: room == freezed ? _value.room : room as String,
      department:
          department == freezed ? _value.department : department as String,
      category: category == freezed ? _value.category : category as String,
      subject: subject == freezed ? _value.subject : subject as String,
      grade: grade == freezed ? _value.grade : grade as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CurriculumSettingModel extends _CurriculumSettingModel {
  const _$_CurriculumSettingModel(
      {@required this.course,
      @required this.code,
      @required this.form,
      @required this.room,
      @required this.department,
      @required this.category,
      @required this.subject,
      @required this.grade})
      : assert(course != null),
        assert(code != null),
        assert(form != null),
        assert(room != null),
        assert(department != null),
        assert(category != null),
        assert(subject != null),
        assert(grade != null),
        super._();

  factory _$_CurriculumSettingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CurriculumSettingModelFromJson(json);

  @override
  final String course;
  @override
  final String code;
  @override
  final String form;
  @override
  final String room;
  @override
  final String department;
  @override
  final String category;
  @override
  final String subject;
  @override
  final String grade;

  @override
  String toString() {
    return 'CurriculumSettingModel(course: $course, code: $code, form: $form, room: $room, department: $department, category: $category, subject: $subject, grade: $grade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurriculumSettingModel &&
            (identical(other.course, course) ||
                const DeepCollectionEquality().equals(other.course, course)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.form, form) ||
                const DeepCollectionEquality().equals(other.form, form)) &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(course) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(form) ^
      const DeepCollectionEquality().hash(room) ^
      const DeepCollectionEquality().hash(department) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(grade);

  @override
  _$CurriculumSettingModelCopyWith<_CurriculumSettingModel> get copyWith =>
      __$CurriculumSettingModelCopyWithImpl<_CurriculumSettingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurriculumSettingModelToJson(this);
  }
}

abstract class _CurriculumSettingModel extends CurriculumSettingModel {
  const _CurriculumSettingModel._() : super._();
  const factory _CurriculumSettingModel(
      {@required String course,
      @required String code,
      @required String form,
      @required String room,
      @required String department,
      @required String category,
      @required String subject,
      @required String grade}) = _$_CurriculumSettingModel;

  factory _CurriculumSettingModel.fromJson(Map<String, dynamic> json) =
      _$_CurriculumSettingModel.fromJson;

  @override
  String get course;
  @override
  String get code;
  @override
  String get form;
  @override
  String get room;
  @override
  String get department;
  @override
  String get category;
  @override
  String get subject;
  @override
  String get grade;
  @override
  _$CurriculumSettingModelCopyWith<_CurriculumSettingModel> get copyWith;
}
