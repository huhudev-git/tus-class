// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MessageDetailModel _$MessageDetailModelFromJson(Map<String, dynamic> json) {
  return _MessageDetailModel.fromJson(json);
}

/// @nodoc
class _$MessageDetailModelTearOff {
  const _$MessageDetailModelTearOff();

// ignore: unused_element
  _MessageDetailModel call(
      {@required String pageId,
      @required String sender,
      @required String title,
      @required String content,
      @required List<MessageFileModel> files,
      @required bool isEntryable,
      @required bool isEntry}) {
    return _MessageDetailModel(
      pageId: pageId,
      sender: sender,
      title: title,
      content: content,
      files: files,
      isEntryable: isEntryable,
      isEntry: isEntry,
    );
  }

// ignore: unused_element
  MessageDetailModel fromJson(Map<String, Object> json) {
    return MessageDetailModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MessageDetailModel = _$MessageDetailModelTearOff();

/// @nodoc
mixin _$MessageDetailModel {
  String get pageId;
  String get sender;
  String get title;
  String get content;
  List<MessageFileModel> get files;
  bool get isEntryable;
  bool get isEntry;

  Map<String, dynamic> toJson();
  $MessageDetailModelCopyWith<MessageDetailModel> get copyWith;
}

/// @nodoc
abstract class $MessageDetailModelCopyWith<$Res> {
  factory $MessageDetailModelCopyWith(
          MessageDetailModel value, $Res Function(MessageDetailModel) then) =
      _$MessageDetailModelCopyWithImpl<$Res>;
  $Res call(
      {String pageId,
      String sender,
      String title,
      String content,
      List<MessageFileModel> files,
      bool isEntryable,
      bool isEntry});
}

/// @nodoc
class _$MessageDetailModelCopyWithImpl<$Res>
    implements $MessageDetailModelCopyWith<$Res> {
  _$MessageDetailModelCopyWithImpl(this._value, this._then);

  final MessageDetailModel _value;
  // ignore: unused_field
  final $Res Function(MessageDetailModel) _then;

  @override
  $Res call({
    Object pageId = freezed,
    Object sender = freezed,
    Object title = freezed,
    Object content = freezed,
    Object files = freezed,
    Object isEntryable = freezed,
    Object isEntry = freezed,
  }) {
    return _then(_value.copyWith(
      pageId: pageId == freezed ? _value.pageId : pageId as String,
      sender: sender == freezed ? _value.sender : sender as String,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
      files: files == freezed ? _value.files : files as List<MessageFileModel>,
      isEntryable:
          isEntryable == freezed ? _value.isEntryable : isEntryable as bool,
      isEntry: isEntry == freezed ? _value.isEntry : isEntry as bool,
    ));
  }
}

/// @nodoc
abstract class _$MessageDetailModelCopyWith<$Res>
    implements $MessageDetailModelCopyWith<$Res> {
  factory _$MessageDetailModelCopyWith(
          _MessageDetailModel value, $Res Function(_MessageDetailModel) then) =
      __$MessageDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String pageId,
      String sender,
      String title,
      String content,
      List<MessageFileModel> files,
      bool isEntryable,
      bool isEntry});
}

/// @nodoc
class __$MessageDetailModelCopyWithImpl<$Res>
    extends _$MessageDetailModelCopyWithImpl<$Res>
    implements _$MessageDetailModelCopyWith<$Res> {
  __$MessageDetailModelCopyWithImpl(
      _MessageDetailModel _value, $Res Function(_MessageDetailModel) _then)
      : super(_value, (v) => _then(v as _MessageDetailModel));

  @override
  _MessageDetailModel get _value => super._value as _MessageDetailModel;

  @override
  $Res call({
    Object pageId = freezed,
    Object sender = freezed,
    Object title = freezed,
    Object content = freezed,
    Object files = freezed,
    Object isEntryable = freezed,
    Object isEntry = freezed,
  }) {
    return _then(_MessageDetailModel(
      pageId: pageId == freezed ? _value.pageId : pageId as String,
      sender: sender == freezed ? _value.sender : sender as String,
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
      files: files == freezed ? _value.files : files as List<MessageFileModel>,
      isEntryable:
          isEntryable == freezed ? _value.isEntryable : isEntryable as bool,
      isEntry: isEntry == freezed ? _value.isEntry : isEntry as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MessageDetailModel extends _MessageDetailModel {
  const _$_MessageDetailModel(
      {@required this.pageId,
      @required this.sender,
      @required this.title,
      @required this.content,
      @required this.files,
      @required this.isEntryable,
      @required this.isEntry})
      : assert(pageId != null),
        assert(sender != null),
        assert(title != null),
        assert(content != null),
        assert(files != null),
        assert(isEntryable != null),
        assert(isEntry != null),
        super._();

  factory _$_MessageDetailModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageDetailModelFromJson(json);

  @override
  final String pageId;
  @override
  final String sender;
  @override
  final String title;
  @override
  final String content;
  @override
  final List<MessageFileModel> files;
  @override
  final bool isEntryable;
  @override
  final bool isEntry;

  @override
  String toString() {
    return 'MessageDetailModel(pageId: $pageId, sender: $sender, title: $title, content: $content, files: $files, isEntryable: $isEntryable, isEntry: $isEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageDetailModel &&
            (identical(other.pageId, pageId) ||
                const DeepCollectionEquality().equals(other.pageId, pageId)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.files, files) ||
                const DeepCollectionEquality().equals(other.files, files)) &&
            (identical(other.isEntryable, isEntryable) ||
                const DeepCollectionEquality()
                    .equals(other.isEntryable, isEntryable)) &&
            (identical(other.isEntry, isEntry) ||
                const DeepCollectionEquality().equals(other.isEntry, isEntry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageId) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(files) ^
      const DeepCollectionEquality().hash(isEntryable) ^
      const DeepCollectionEquality().hash(isEntry);

  @override
  _$MessageDetailModelCopyWith<_MessageDetailModel> get copyWith =>
      __$MessageDetailModelCopyWithImpl<_MessageDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageDetailModelToJson(this);
  }
}

abstract class _MessageDetailModel extends MessageDetailModel {
  const _MessageDetailModel._() : super._();
  const factory _MessageDetailModel(
      {@required String pageId,
      @required String sender,
      @required String title,
      @required String content,
      @required List<MessageFileModel> files,
      @required bool isEntryable,
      @required bool isEntry}) = _$_MessageDetailModel;

  factory _MessageDetailModel.fromJson(Map<String, dynamic> json) =
      _$_MessageDetailModel.fromJson;

  @override
  String get pageId;
  @override
  String get sender;
  @override
  String get title;
  @override
  String get content;
  @override
  List<MessageFileModel> get files;
  @override
  bool get isEntryable;
  @override
  bool get isEntry;
  @override
  _$MessageDetailModelCopyWith<_MessageDetailModel> get copyWith;
}
