// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
class _$MessageModelTearOff {
  const _$MessageModelTearOff();

// ignore: unused_element
  _MessageModel call(
      {@required int index,
      @required String title,
      @required String category,
      @required String date,
      @required String from,
      @required String link,
      @required bool isRead,
      @required bool isImportant,
      @required bool isNew}) {
    return _MessageModel(
      index: index,
      title: title,
      category: category,
      date: date,
      from: from,
      link: link,
      isRead: isRead,
      isImportant: isImportant,
      isNew: isNew,
    );
  }

// ignore: unused_element
  MessageModel fromJson(Map<String, Object> json) {
    return MessageModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MessageModel = _$MessageModelTearOff();

/// @nodoc
mixin _$MessageModel {
  int get index;
  String get title;
  String get category;
  String get date;
  String get from;
  String get link;
  bool get isRead;
  bool get isImportant;
  bool get isNew;

  Map<String, dynamic> toJson();
  $MessageModelCopyWith<MessageModel> get copyWith;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res>;
  $Res call(
      {int index,
      String title,
      String category,
      String date,
      String from,
      String link,
      bool isRead,
      bool isImportant,
      bool isNew});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res> implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  final MessageModel _value;
  // ignore: unused_field
  final $Res Function(MessageModel) _then;

  @override
  $Res call({
    Object index = freezed,
    Object title = freezed,
    Object category = freezed,
    Object date = freezed,
    Object from = freezed,
    Object link = freezed,
    Object isRead = freezed,
    Object isImportant = freezed,
    Object isNew = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
      title: title == freezed ? _value.title : title as String,
      category: category == freezed ? _value.category : category as String,
      date: date == freezed ? _value.date : date as String,
      from: from == freezed ? _value.from : from as String,
      link: link == freezed ? _value.link : link as String,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
      isImportant:
          isImportant == freezed ? _value.isImportant : isImportant as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
    ));
  }
}

/// @nodoc
abstract class _$MessageModelCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$MessageModelCopyWith(
          _MessageModel value, $Res Function(_MessageModel) then) =
      __$MessageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int index,
      String title,
      String category,
      String date,
      String from,
      String link,
      bool isRead,
      bool isImportant,
      bool isNew});
}

/// @nodoc
class __$MessageModelCopyWithImpl<$Res> extends _$MessageModelCopyWithImpl<$Res>
    implements _$MessageModelCopyWith<$Res> {
  __$MessageModelCopyWithImpl(
      _MessageModel _value, $Res Function(_MessageModel) _then)
      : super(_value, (v) => _then(v as _MessageModel));

  @override
  _MessageModel get _value => super._value as _MessageModel;

  @override
  $Res call({
    Object index = freezed,
    Object title = freezed,
    Object category = freezed,
    Object date = freezed,
    Object from = freezed,
    Object link = freezed,
    Object isRead = freezed,
    Object isImportant = freezed,
    Object isNew = freezed,
  }) {
    return _then(_MessageModel(
      index: index == freezed ? _value.index : index as int,
      title: title == freezed ? _value.title : title as String,
      category: category == freezed ? _value.category : category as String,
      date: date == freezed ? _value.date : date as String,
      from: from == freezed ? _value.from : from as String,
      link: link == freezed ? _value.link : link as String,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
      isImportant:
          isImportant == freezed ? _value.isImportant : isImportant as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MessageModel extends _MessageModel {
  const _$_MessageModel(
      {@required this.index,
      @required this.title,
      @required this.category,
      @required this.date,
      @required this.from,
      @required this.link,
      @required this.isRead,
      @required this.isImportant,
      @required this.isNew})
      : assert(index != null),
        assert(title != null),
        assert(category != null),
        assert(date != null),
        assert(from != null),
        assert(link != null),
        assert(isRead != null),
        assert(isImportant != null),
        assert(isNew != null),
        super._();

  factory _$_MessageModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageModelFromJson(json);

  @override
  final int index;
  @override
  final String title;
  @override
  final String category;
  @override
  final String date;
  @override
  final String from;
  @override
  final String link;
  @override
  final bool isRead;
  @override
  final bool isImportant;
  @override
  final bool isNew;

  @override
  String toString() {
    return 'MessageModel(index: $index, title: $title, category: $category, date: $date, from: $from, link: $link, isRead: $isRead, isImportant: $isImportant, isNew: $isNew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageModel &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.isImportant, isImportant) ||
                const DeepCollectionEquality()
                    .equals(other.isImportant, isImportant)) &&
            (identical(other.isNew, isNew) ||
                const DeepCollectionEquality().equals(other.isNew, isNew)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(isImportant) ^
      const DeepCollectionEquality().hash(isNew);

  @override
  _$MessageModelCopyWith<_MessageModel> get copyWith =>
      __$MessageModelCopyWithImpl<_MessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageModelToJson(this);
  }
}

abstract class _MessageModel extends MessageModel {
  const _MessageModel._() : super._();
  const factory _MessageModel(
      {@required int index,
      @required String title,
      @required String category,
      @required String date,
      @required String from,
      @required String link,
      @required bool isRead,
      @required bool isImportant,
      @required bool isNew}) = _$_MessageModel;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$_MessageModel.fromJson;

  @override
  int get index;
  @override
  String get title;
  @override
  String get category;
  @override
  String get date;
  @override
  String get from;
  @override
  String get link;
  @override
  bool get isRead;
  @override
  bool get isImportant;
  @override
  bool get isNew;
  @override
  _$MessageModelCopyWith<_MessageModel> get copyWith;
}
