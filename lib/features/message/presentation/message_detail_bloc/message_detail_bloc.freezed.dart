// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MessageDetailEventTearOff {
  const _$MessageDetailEventTearOff();

// ignore: unused_element
  FetchMessageDetail fetchMessageDetail(
      {int categoryId, int index, String link}) {
    return FetchMessageDetail(
      categoryId: categoryId,
      index: index,
      link: link,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessageDetailEvent = _$MessageDetailEventTearOff();

/// @nodoc
mixin _$MessageDetailEvent {
  int get categoryId;
  int get index;
  String get link;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMessageDetail(int categoryId, int index, String link),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMessageDetail(int categoryId, int index, String link),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMessageDetail(FetchMessageDetail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMessageDetail(FetchMessageDetail value),
    @required Result orElse(),
  });

  $MessageDetailEventCopyWith<MessageDetailEvent> get copyWith;
}

/// @nodoc
abstract class $MessageDetailEventCopyWith<$Res> {
  factory $MessageDetailEventCopyWith(
          MessageDetailEvent value, $Res Function(MessageDetailEvent) then) =
      _$MessageDetailEventCopyWithImpl<$Res>;
  $Res call({int categoryId, int index, String link});
}

/// @nodoc
class _$MessageDetailEventCopyWithImpl<$Res>
    implements $MessageDetailEventCopyWith<$Res> {
  _$MessageDetailEventCopyWithImpl(this._value, this._then);

  final MessageDetailEvent _value;
  // ignore: unused_field
  final $Res Function(MessageDetailEvent) _then;

  @override
  $Res call({
    Object categoryId = freezed,
    Object index = freezed,
    Object link = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: categoryId == freezed ? _value.categoryId : categoryId as int,
      index: index == freezed ? _value.index : index as int,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

/// @nodoc
abstract class $FetchMessageDetailCopyWith<$Res>
    implements $MessageDetailEventCopyWith<$Res> {
  factory $FetchMessageDetailCopyWith(
          FetchMessageDetail value, $Res Function(FetchMessageDetail) then) =
      _$FetchMessageDetailCopyWithImpl<$Res>;
  @override
  $Res call({int categoryId, int index, String link});
}

/// @nodoc
class _$FetchMessageDetailCopyWithImpl<$Res>
    extends _$MessageDetailEventCopyWithImpl<$Res>
    implements $FetchMessageDetailCopyWith<$Res> {
  _$FetchMessageDetailCopyWithImpl(
      FetchMessageDetail _value, $Res Function(FetchMessageDetail) _then)
      : super(_value, (v) => _then(v as FetchMessageDetail));

  @override
  FetchMessageDetail get _value => super._value as FetchMessageDetail;

  @override
  $Res call({
    Object categoryId = freezed,
    Object index = freezed,
    Object link = freezed,
  }) {
    return _then(FetchMessageDetail(
      categoryId: categoryId == freezed ? _value.categoryId : categoryId as int,
      index: index == freezed ? _value.index : index as int,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

/// @nodoc
class _$FetchMessageDetail implements FetchMessageDetail {
  const _$FetchMessageDetail({this.categoryId, this.index, this.link});

  @override
  final int categoryId;
  @override
  final int index;
  @override
  final String link;

  @override
  String toString() {
    return 'MessageDetailEvent.fetchMessageDetail(categoryId: $categoryId, index: $index, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchMessageDetail &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(link);

  @override
  $FetchMessageDetailCopyWith<FetchMessageDetail> get copyWith =>
      _$FetchMessageDetailCopyWithImpl<FetchMessageDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchMessageDetail(int categoryId, int index, String link),
  }) {
    assert(fetchMessageDetail != null);
    return fetchMessageDetail(categoryId, index, link);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchMessageDetail(int categoryId, int index, String link),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMessageDetail != null) {
      return fetchMessageDetail(categoryId, index, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchMessageDetail(FetchMessageDetail value),
  }) {
    assert(fetchMessageDetail != null);
    return fetchMessageDetail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchMessageDetail(FetchMessageDetail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMessageDetail != null) {
      return fetchMessageDetail(this);
    }
    return orElse();
  }
}

abstract class FetchMessageDetail implements MessageDetailEvent {
  const factory FetchMessageDetail({int categoryId, int index, String link}) =
      _$FetchMessageDetail;

  @override
  int get categoryId;
  @override
  int get index;
  @override
  String get link;
  @override
  $FetchMessageDetailCopyWith<FetchMessageDetail> get copyWith;
}

/// @nodoc
class _$MessageDetailStateTearOff {
  const _$MessageDetailStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading({int index}) {
    return Loading(
      index: index,
    );
  }

// ignore: unused_element
  Failed failed({Failure error}) {
    return Failed(
      error: error,
    );
  }

// ignore: unused_element
  Loaded loaded({MessageDetail detail}) {
    return Loaded(
      detail: detail,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessageDetailState = _$MessageDetailStateTearOff();

/// @nodoc
mixin _$MessageDetailState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(int index),
    @required Result failed(Failure error),
    @required Result loaded(MessageDetail detail),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(int index),
    Result failed(Failure error),
    Result loaded(MessageDetail detail),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
    Result loaded(Loaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $MessageDetailStateCopyWith<$Res> {
  factory $MessageDetailStateCopyWith(
          MessageDetailState value, $Res Function(MessageDetailState) then) =
      _$MessageDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageDetailStateCopyWithImpl<$Res>
    implements $MessageDetailStateCopyWith<$Res> {
  _$MessageDetailStateCopyWithImpl(this._value, this._then);

  final MessageDetailState _value;
  // ignore: unused_field
  final $Res Function(MessageDetailState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$MessageDetailStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'MessageDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(int index),
    @required Result failed(Failure error),
    @required Result loaded(MessageDetail detail),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(int index),
    Result failed(Failure error),
    Result loaded(MessageDetail detail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MessageDetailState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$MessageDetailStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(Loading(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading({this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'MessageDetailState.loading(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(int index),
    @required Result failed(Failure error),
    @required Result loaded(MessageDetail detail),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loading(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(int index),
    Result failed(Failure error),
    Result loaded(MessageDetail detail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MessageDetailState {
  const factory Loading({int index}) = _$Loading;

  int get index;
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$MessageDetailStateCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Failed(
      error: error == freezed ? _value.error : error as Failure,
    ));
  }
}

/// @nodoc
class _$Failed implements Failed {
  const _$Failed({this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'MessageDetailState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $FailedCopyWith<Failed> get copyWith =>
      _$FailedCopyWithImpl<Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(int index),
    @required Result failed(Failure error),
    @required Result loaded(MessageDetail detail),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return failed(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(int index),
    Result failed(Failure error),
    Result loaded(MessageDetail detail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements MessageDetailState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({MessageDetail detail});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$MessageDetailStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object detail = freezed,
  }) {
    return _then(Loaded(
      detail: detail == freezed ? _value.detail : detail as MessageDetail,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded({this.detail});

  @override
  final MessageDetail detail;

  @override
  String toString() {
    return 'MessageDetailState.loaded(detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(detail);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(int index),
    @required Result failed(Failure error),
    @required Result loaded(MessageDetail detail),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(detail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(int index),
    Result failed(Failure error),
    Result loaded(MessageDetail detail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result failed(Failed value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MessageDetailState {
  const factory Loaded({MessageDetail detail}) = _$Loaded;

  MessageDetail get detail;
  $LoadedCopyWith<Loaded> get copyWith;
}
