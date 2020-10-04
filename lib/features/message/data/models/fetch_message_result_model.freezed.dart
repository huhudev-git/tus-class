// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_message_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FetchMessageResultModel _$FetchMessageResultModelFromJson(
    Map<String, dynamic> json) {
  return _FetchMessageResultModel.fromJson(json);
}

/// @nodoc
class _$FetchMessageResultModelTearOff {
  const _$FetchMessageResultModelTearOff();

// ignore: unused_element
  _FetchMessageResultModel call(
      {@required List<MessageModel> messages, @required bool isLastPage}) {
    return _FetchMessageResultModel(
      messages: messages,
      isLastPage: isLastPage,
    );
  }

// ignore: unused_element
  FetchMessageResultModel fromJson(Map<String, Object> json) {
    return FetchMessageResultModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FetchMessageResultModel = _$FetchMessageResultModelTearOff();

/// @nodoc
mixin _$FetchMessageResultModel {
  List<MessageModel> get messages;
  bool get isLastPage;

  Map<String, dynamic> toJson();
  $FetchMessageResultModelCopyWith<FetchMessageResultModel> get copyWith;
}

/// @nodoc
abstract class $FetchMessageResultModelCopyWith<$Res> {
  factory $FetchMessageResultModelCopyWith(FetchMessageResultModel value,
          $Res Function(FetchMessageResultModel) then) =
      _$FetchMessageResultModelCopyWithImpl<$Res>;
  $Res call({List<MessageModel> messages, bool isLastPage});
}

/// @nodoc
class _$FetchMessageResultModelCopyWithImpl<$Res>
    implements $FetchMessageResultModelCopyWith<$Res> {
  _$FetchMessageResultModelCopyWithImpl(this._value, this._then);

  final FetchMessageResultModel _value;
  // ignore: unused_field
  final $Res Function(FetchMessageResultModel) _then;

  @override
  $Res call({
    Object messages = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages as List<MessageModel>,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

/// @nodoc
abstract class _$FetchMessageResultModelCopyWith<$Res>
    implements $FetchMessageResultModelCopyWith<$Res> {
  factory _$FetchMessageResultModelCopyWith(_FetchMessageResultModel value,
          $Res Function(_FetchMessageResultModel) then) =
      __$FetchMessageResultModelCopyWithImpl<$Res>;
  @override
  $Res call({List<MessageModel> messages, bool isLastPage});
}

/// @nodoc
class __$FetchMessageResultModelCopyWithImpl<$Res>
    extends _$FetchMessageResultModelCopyWithImpl<$Res>
    implements _$FetchMessageResultModelCopyWith<$Res> {
  __$FetchMessageResultModelCopyWithImpl(_FetchMessageResultModel _value,
      $Res Function(_FetchMessageResultModel) _then)
      : super(_value, (v) => _then(v as _FetchMessageResultModel));

  @override
  _FetchMessageResultModel get _value =>
      super._value as _FetchMessageResultModel;

  @override
  $Res call({
    Object messages = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(_FetchMessageResultModel(
      messages: messages == freezed
          ? _value.messages
          : messages as List<MessageModel>,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FetchMessageResultModel extends _FetchMessageResultModel {
  const _$_FetchMessageResultModel(
      {@required this.messages, @required this.isLastPage})
      : assert(messages != null),
        assert(isLastPage != null),
        super._();

  factory _$_FetchMessageResultModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FetchMessageResultModelFromJson(json);

  @override
  final List<MessageModel> messages;
  @override
  final bool isLastPage;

  @override
  String toString() {
    return 'FetchMessageResultModel(messages: $messages, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchMessageResultModel &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(isLastPage);

  @override
  _$FetchMessageResultModelCopyWith<_FetchMessageResultModel> get copyWith =>
      __$FetchMessageResultModelCopyWithImpl<_FetchMessageResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FetchMessageResultModelToJson(this);
  }
}

abstract class _FetchMessageResultModel extends FetchMessageResultModel {
  const _FetchMessageResultModel._() : super._();
  const factory _FetchMessageResultModel(
      {@required List<MessageModel> messages,
      @required bool isLastPage}) = _$_FetchMessageResultModel;

  factory _FetchMessageResultModel.fromJson(Map<String, dynamic> json) =
      _$_FetchMessageResultModel.fromJson;

  @override
  List<MessageModel> get messages;
  @override
  bool get isLastPage;
  @override
  _$FetchMessageResultModelCopyWith<_FetchMessageResultModel> get copyWith;
}
