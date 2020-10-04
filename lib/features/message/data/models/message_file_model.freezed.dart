// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MessageFileModel _$MessageFileModelFromJson(Map<String, dynamic> json) {
  return _MessageFileModel.fromJson(json);
}

/// @nodoc
class _$MessageFileModelTearOff {
  const _$MessageFileModelTearOff();

// ignore: unused_element
  _MessageFileModel call(
      {@required int index, @required String filename, @required int size}) {
    return _MessageFileModel(
      index: index,
      filename: filename,
      size: size,
    );
  }

// ignore: unused_element
  MessageFileModel fromJson(Map<String, Object> json) {
    return MessageFileModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MessageFileModel = _$MessageFileModelTearOff();

/// @nodoc
mixin _$MessageFileModel {
  int get index;
  String get filename;
  int get size;

  Map<String, dynamic> toJson();
  $MessageFileModelCopyWith<MessageFileModel> get copyWith;
}

/// @nodoc
abstract class $MessageFileModelCopyWith<$Res> {
  factory $MessageFileModelCopyWith(
          MessageFileModel value, $Res Function(MessageFileModel) then) =
      _$MessageFileModelCopyWithImpl<$Res>;
  $Res call({int index, String filename, int size});
}

/// @nodoc
class _$MessageFileModelCopyWithImpl<$Res>
    implements $MessageFileModelCopyWith<$Res> {
  _$MessageFileModelCopyWithImpl(this._value, this._then);

  final MessageFileModel _value;
  // ignore: unused_field
  final $Res Function(MessageFileModel) _then;

  @override
  $Res call({
    Object index = freezed,
    Object filename = freezed,
    Object size = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
      filename: filename == freezed ? _value.filename : filename as String,
      size: size == freezed ? _value.size : size as int,
    ));
  }
}

/// @nodoc
abstract class _$MessageFileModelCopyWith<$Res>
    implements $MessageFileModelCopyWith<$Res> {
  factory _$MessageFileModelCopyWith(
          _MessageFileModel value, $Res Function(_MessageFileModel) then) =
      __$MessageFileModelCopyWithImpl<$Res>;
  @override
  $Res call({int index, String filename, int size});
}

/// @nodoc
class __$MessageFileModelCopyWithImpl<$Res>
    extends _$MessageFileModelCopyWithImpl<$Res>
    implements _$MessageFileModelCopyWith<$Res> {
  __$MessageFileModelCopyWithImpl(
      _MessageFileModel _value, $Res Function(_MessageFileModel) _then)
      : super(_value, (v) => _then(v as _MessageFileModel));

  @override
  _MessageFileModel get _value => super._value as _MessageFileModel;

  @override
  $Res call({
    Object index = freezed,
    Object filename = freezed,
    Object size = freezed,
  }) {
    return _then(_MessageFileModel(
      index: index == freezed ? _value.index : index as int,
      filename: filename == freezed ? _value.filename : filename as String,
      size: size == freezed ? _value.size : size as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MessageFileModel extends _MessageFileModel {
  const _$_MessageFileModel(
      {@required this.index, @required this.filename, @required this.size})
      : assert(index != null),
        assert(filename != null),
        assert(size != null),
        super._();

  factory _$_MessageFileModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageFileModelFromJson(json);

  @override
  final int index;
  @override
  final String filename;
  @override
  final int size;

  @override
  String toString() {
    return 'MessageFileModel(index: $index, filename: $filename, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageFileModel &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.filename, filename) ||
                const DeepCollectionEquality()
                    .equals(other.filename, filename)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(filename) ^
      const DeepCollectionEquality().hash(size);

  @override
  _$MessageFileModelCopyWith<_MessageFileModel> get copyWith =>
      __$MessageFileModelCopyWithImpl<_MessageFileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageFileModelToJson(this);
  }
}

abstract class _MessageFileModel extends MessageFileModel {
  const _MessageFileModel._() : super._();
  const factory _MessageFileModel(
      {@required int index,
      @required String filename,
      @required int size}) = _$_MessageFileModel;

  factory _MessageFileModel.fromJson(Map<String, dynamic> json) =
      _$_MessageFileModel.fromJson;

  @override
  int get index;
  @override
  String get filename;
  @override
  int get size;
  @override
  _$MessageFileModelCopyWith<_MessageFileModel> get copyWith;
}
