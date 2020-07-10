// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'message_entry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessageEntryEventTearOff {
  const _$MessageEntryEventTearOff();

  Init init({bool isEntry}) {
    return Init(
      isEntry: isEntry,
    );
  }

  MessageEntrySwitch entrySwitch({String pageId, bool isEntry}) {
    return MessageEntrySwitch(
      pageId: pageId,
      isEntry: isEntry,
    );
  }
}

// ignore: unused_element
const $MessageEntryEvent = _$MessageEntryEventTearOff();

mixin _$MessageEntryEvent {
  bool get isEntry;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(bool isEntry),
    @required Result entrySwitch(String pageId, bool isEntry),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(bool isEntry),
    Result entrySwitch(String pageId, bool isEntry),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result entrySwitch(MessageEntrySwitch value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result entrySwitch(MessageEntrySwitch value),
    @required Result orElse(),
  });

  $MessageEntryEventCopyWith<MessageEntryEvent> get copyWith;
}

abstract class $MessageEntryEventCopyWith<$Res> {
  factory $MessageEntryEventCopyWith(
          MessageEntryEvent value, $Res Function(MessageEntryEvent) then) =
      _$MessageEntryEventCopyWithImpl<$Res>;
  $Res call({bool isEntry});
}

class _$MessageEntryEventCopyWithImpl<$Res>
    implements $MessageEntryEventCopyWith<$Res> {
  _$MessageEntryEventCopyWithImpl(this._value, this._then);

  final MessageEntryEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEntryEvent) _then;

  @override
  $Res call({
    Object isEntry = freezed,
  }) {
    return _then(_value.copyWith(
      isEntry: isEntry == freezed ? _value.isEntry : isEntry as bool,
    ));
  }
}

abstract class $InitCopyWith<$Res> implements $MessageEntryEventCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
  @override
  $Res call({bool isEntry});
}

class _$InitCopyWithImpl<$Res> extends _$MessageEntryEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;

  @override
  $Res call({
    Object isEntry = freezed,
  }) {
    return _then(Init(
      isEntry: isEntry == freezed ? _value.isEntry : isEntry as bool,
    ));
  }
}

class _$Init implements Init {
  const _$Init({this.isEntry});

  @override
  final bool isEntry;

  @override
  String toString() {
    return 'MessageEntryEvent.init(isEntry: $isEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Init &&
            (identical(other.isEntry, isEntry) ||
                const DeepCollectionEquality().equals(other.isEntry, isEntry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEntry);

  @override
  $InitCopyWith<Init> get copyWith =>
      _$InitCopyWithImpl<Init>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(bool isEntry),
    @required Result entrySwitch(String pageId, bool isEntry),
  }) {
    assert(init != null);
    assert(entrySwitch != null);
    return init(isEntry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(bool isEntry),
    Result entrySwitch(String pageId, bool isEntry),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(isEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result entrySwitch(MessageEntrySwitch value),
  }) {
    assert(init != null);
    assert(entrySwitch != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result entrySwitch(MessageEntrySwitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements MessageEntryEvent {
  const factory Init({bool isEntry}) = _$Init;

  @override
  bool get isEntry;
  @override
  $InitCopyWith<Init> get copyWith;
}

abstract class $MessageEntrySwitchCopyWith<$Res>
    implements $MessageEntryEventCopyWith<$Res> {
  factory $MessageEntrySwitchCopyWith(
          MessageEntrySwitch value, $Res Function(MessageEntrySwitch) then) =
      _$MessageEntrySwitchCopyWithImpl<$Res>;
  @override
  $Res call({String pageId, bool isEntry});
}

class _$MessageEntrySwitchCopyWithImpl<$Res>
    extends _$MessageEntryEventCopyWithImpl<$Res>
    implements $MessageEntrySwitchCopyWith<$Res> {
  _$MessageEntrySwitchCopyWithImpl(
      MessageEntrySwitch _value, $Res Function(MessageEntrySwitch) _then)
      : super(_value, (v) => _then(v as MessageEntrySwitch));

  @override
  MessageEntrySwitch get _value => super._value as MessageEntrySwitch;

  @override
  $Res call({
    Object pageId = freezed,
    Object isEntry = freezed,
  }) {
    return _then(MessageEntrySwitch(
      pageId: pageId == freezed ? _value.pageId : pageId as String,
      isEntry: isEntry == freezed ? _value.isEntry : isEntry as bool,
    ));
  }
}

class _$MessageEntrySwitch implements MessageEntrySwitch {
  const _$MessageEntrySwitch({this.pageId, this.isEntry});

  @override
  final String pageId;
  @override
  final bool isEntry;

  @override
  String toString() {
    return 'MessageEntryEvent.entrySwitch(pageId: $pageId, isEntry: $isEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MessageEntrySwitch &&
            (identical(other.pageId, pageId) ||
                const DeepCollectionEquality().equals(other.pageId, pageId)) &&
            (identical(other.isEntry, isEntry) ||
                const DeepCollectionEquality().equals(other.isEntry, isEntry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageId) ^
      const DeepCollectionEquality().hash(isEntry);

  @override
  $MessageEntrySwitchCopyWith<MessageEntrySwitch> get copyWith =>
      _$MessageEntrySwitchCopyWithImpl<MessageEntrySwitch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(bool isEntry),
    @required Result entrySwitch(String pageId, bool isEntry),
  }) {
    assert(init != null);
    assert(entrySwitch != null);
    return entrySwitch(pageId, isEntry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(bool isEntry),
    Result entrySwitch(String pageId, bool isEntry),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (entrySwitch != null) {
      return entrySwitch(pageId, isEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result entrySwitch(MessageEntrySwitch value),
  }) {
    assert(init != null);
    assert(entrySwitch != null);
    return entrySwitch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result entrySwitch(MessageEntrySwitch value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (entrySwitch != null) {
      return entrySwitch(this);
    }
    return orElse();
  }
}

abstract class MessageEntrySwitch implements MessageEntryEvent {
  const factory MessageEntrySwitch({String pageId, bool isEntry}) =
      _$MessageEntrySwitch;

  String get pageId;
  @override
  bool get isEntry;
  @override
  $MessageEntrySwitchCopyWith<MessageEntrySwitch> get copyWith;
}

class _$MessageEntryStateTearOff {
  const _$MessageEntryStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded({bool isEntry}) {
    return Loaded(
      isEntry: isEntry,
    );
  }

  Failed failed({Failure error}) {
    return Failed(
      error: error,
    );
  }

  Success success({bool isEntry}) {
    return Success(
      isEntry: isEntry,
    );
  }
}

// ignore: unused_element
const $MessageEntryState = _$MessageEntryStateTearOff();

mixin _$MessageEntryState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(bool isEntry),
    @required Result failed(Failure error),
    @required Result success(bool isEntry),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(bool isEntry),
    Result failed(Failure error),
    Result success(bool isEntry),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
    @required Result success(Success value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    Result success(Success value),
    @required Result orElse(),
  });
}

abstract class $MessageEntryStateCopyWith<$Res> {
  factory $MessageEntryStateCopyWith(
          MessageEntryState value, $Res Function(MessageEntryState) then) =
      _$MessageEntryStateCopyWithImpl<$Res>;
}

class _$MessageEntryStateCopyWithImpl<$Res>
    implements $MessageEntryStateCopyWith<$Res> {
  _$MessageEntryStateCopyWithImpl(this._value, this._then);

  final MessageEntryState _value;
  // ignore: unused_field
  final $Res Function(MessageEntryState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$MessageEntryStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'MessageEntryState.initial()';
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
    @required Result loading(),
    @required Result loaded(bool isEntry),
    @required Result failed(Failure error),
    @required Result success(bool isEntry),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(bool isEntry),
    Result failed(Failure error),
    Result success(bool isEntry),
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
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
    @required Result success(Success value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    Result success(Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MessageEntryState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$MessageEntryStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'MessageEntryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(bool isEntry),
    @required Result failed(Failure error),
    @required Result success(bool isEntry),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(bool isEntry),
    Result failed(Failure error),
    Result success(bool isEntry),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
    @required Result success(Success value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    Result success(Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MessageEntryState {
  const factory Loading() = _$Loading;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({bool isEntry});
}

class _$LoadedCopyWithImpl<$Res> extends _$MessageEntryStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object isEntry = freezed,
  }) {
    return _then(Loaded(
      isEntry: isEntry == freezed ? _value.isEntry : isEntry as bool,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded({this.isEntry});

  @override
  final bool isEntry;

  @override
  String toString() {
    return 'MessageEntryState.loaded(isEntry: $isEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.isEntry, isEntry) ||
                const DeepCollectionEquality().equals(other.isEntry, isEntry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEntry);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(bool isEntry),
    @required Result failed(Failure error),
    @required Result success(bool isEntry),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return loaded(isEntry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(bool isEntry),
    Result failed(Failure error),
    Result success(bool isEntry),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(isEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
    @required Result success(Success value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    Result success(Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MessageEntryState {
  const factory Loaded({bool isEntry}) = _$Loaded;

  bool get isEntry;
  $LoadedCopyWith<Loaded> get copyWith;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

class _$FailedCopyWithImpl<$Res> extends _$MessageEntryStateCopyWithImpl<$Res>
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

class _$Failed implements Failed {
  const _$Failed({this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'MessageEntryState.failed(error: $error)';
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
    @required Result loading(),
    @required Result loaded(bool isEntry),
    @required Result failed(Failure error),
    @required Result success(bool isEntry),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return failed(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(bool isEntry),
    Result failed(Failure error),
    Result success(bool isEntry),
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
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
    @required Result success(Success value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    Result success(Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements MessageEntryState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({bool isEntry});
}

class _$SuccessCopyWithImpl<$Res> extends _$MessageEntryStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object isEntry = freezed,
  }) {
    return _then(Success(
      isEntry: isEntry == freezed ? _value.isEntry : isEntry as bool,
    ));
  }
}

class _$Success implements Success {
  const _$Success({this.isEntry});

  @override
  final bool isEntry;

  @override
  String toString() {
    return 'MessageEntryState.success(isEntry: $isEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.isEntry, isEntry) ||
                const DeepCollectionEquality().equals(other.isEntry, isEntry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEntry);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(bool isEntry),
    @required Result failed(Failure error),
    @required Result success(bool isEntry),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return success(isEntry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(bool isEntry),
    Result failed(Failure error),
    Result success(bool isEntry),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(isEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
    @required Result success(Success value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    Result success(Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements MessageEntryState {
  const factory Success({bool isEntry}) = _$Success;

  bool get isEntry;
  $SuccessCopyWith<Success> get copyWith;
}
