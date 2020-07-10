// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

class _$CategoryModelTearOff {
  const _$CategoryModelTearOff();

  _CategoryModel call(
      {@required int index,
      @required List<MessageModel> messages,
      @required String category,
      @required int page,
      @required bool isLastPage}) {
    return _CategoryModel(
      index: index,
      messages: messages,
      category: category,
      page: page,
      isLastPage: isLastPage,
    );
  }
}

// ignore: unused_element
const $CategoryModel = _$CategoryModelTearOff();

mixin _$CategoryModel {
  int get index;
  List<MessageModel> get messages;
  String get category;
  int get page;
  bool get isLastPage;

  Map<String, dynamic> toJson();
  $CategoryModelCopyWith<CategoryModel> get copyWith;
}

abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res>;
  $Res call(
      {int index,
      List<MessageModel> messages,
      String category,
      int page,
      bool isLastPage});
}

class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  final CategoryModel _value;
  // ignore: unused_field
  final $Res Function(CategoryModel) _then;

  @override
  $Res call({
    Object index = freezed,
    Object messages = freezed,
    Object category = freezed,
    Object page = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
      messages: messages == freezed
          ? _value.messages
          : messages as List<MessageModel>,
      category: category == freezed ? _value.category : category as String,
      page: page == freezed ? _value.page : page as int,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

abstract class _$CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(
          _CategoryModel value, $Res Function(_CategoryModel) then) =
      __$CategoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int index,
      List<MessageModel> messages,
      String category,
      int page,
      bool isLastPage});
}

class __$CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(
      _CategoryModel _value, $Res Function(_CategoryModel) _then)
      : super(_value, (v) => _then(v as _CategoryModel));

  @override
  _CategoryModel get _value => super._value as _CategoryModel;

  @override
  $Res call({
    Object index = freezed,
    Object messages = freezed,
    Object category = freezed,
    Object page = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(_CategoryModel(
      index: index == freezed ? _value.index : index as int,
      messages: messages == freezed
          ? _value.messages
          : messages as List<MessageModel>,
      category: category == freezed ? _value.category : category as String,
      page: page == freezed ? _value.page : page as int,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

@JsonSerializable()
class _$_CategoryModel extends _CategoryModel {
  const _$_CategoryModel(
      {@required this.index,
      @required this.messages,
      @required this.category,
      @required this.page,
      @required this.isLastPage})
      : assert(index != null),
        assert(messages != null),
        assert(category != null),
        assert(page != null),
        assert(isLastPage != null),
        super._();

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryModelFromJson(json);

  @override
  final int index;
  @override
  final List<MessageModel> messages;
  @override
  final String category;
  @override
  final int page;
  @override
  final bool isLastPage;

  @override
  String toString() {
    return 'CategoryModel(index: $index, messages: $messages, category: $category, page: $page, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryModel &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(isLastPage);

  @override
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryModelToJson(this);
  }
}

abstract class _CategoryModel extends CategoryModel {
  const _CategoryModel._() : super._();
  const factory _CategoryModel(
      {@required int index,
      @required List<MessageModel> messages,
      @required String category,
      @required int page,
      @required bool isLastPage}) = _$_CategoryModel;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  int get index;
  @override
  List<MessageModel> get messages;
  @override
  String get category;
  @override
  int get page;
  @override
  bool get isLastPage;
  @override
  _$CategoryModelCopyWith<_CategoryModel> get copyWith;
}
