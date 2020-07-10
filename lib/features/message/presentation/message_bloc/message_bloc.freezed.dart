// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessageEventTearOff {
  const _$MessageEventTearOff();

  Init init(
      {List<Message> messages,
      int categoryId,
      String category,
      bool isLastPage}) {
    return Init(
      messages: messages,
      categoryId: categoryId,
      category: category,
      isLastPage: isLastPage,
    );
  }

  FetchPage fetchPage({int categoryId, int page}) {
    return FetchPage(
      categoryId: categoryId,
      page: page,
    );
  }

  Read read({int categoryId, int index}) {
    return Read(
      categoryId: categoryId,
      index: index,
    );
  }
}

// ignore: unused_element
const $MessageEvent = _$MessageEventTearOff();

mixin _$MessageEvent {
  int get categoryId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result init(List<Message> messages, int categoryId, String category,
            bool isLastPage),
    @required Result fetchPage(int categoryId, int page),
    @required Result read(int categoryId, int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(List<Message> messages, int categoryId, String category,
        bool isLastPage),
    Result fetchPage(int categoryId, int page),
    Result read(int categoryId, int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result fetchPage(FetchPage value),
    @required Result read(Read value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result fetchPage(FetchPage value),
    Result read(Read value),
    @required Result orElse(),
  });

  $MessageEventCopyWith<MessageEvent> get copyWith;
}

abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
  $Res call({int categoryId});
}

class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;

  @override
  $Res call({
    Object categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: categoryId == freezed ? _value.categoryId : categoryId as int,
    ));
  }
}

abstract class $InitCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Message> messages,
      int categoryId,
      String category,
      bool isLastPage});
}

class _$InitCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;

  @override
  $Res call({
    Object messages = freezed,
    Object categoryId = freezed,
    Object category = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(Init(
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
      categoryId: categoryId == freezed ? _value.categoryId : categoryId as int,
      category: category == freezed ? _value.category : category as String,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

class _$Init implements Init {
  const _$Init(
      {this.messages, this.categoryId, this.category, this.isLastPage});

  @override
  final List<Message> messages;
  @override
  final int categoryId;
  @override
  final String category;
  @override
  final bool isLastPage;

  @override
  String toString() {
    return 'MessageEvent.init(messages: $messages, categoryId: $categoryId, category: $category, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Init &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(isLastPage);

  @override
  $InitCopyWith<Init> get copyWith =>
      _$InitCopyWithImpl<Init>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result init(List<Message> messages, int categoryId, String category,
            bool isLastPage),
    @required Result fetchPage(int categoryId, int page),
    @required Result read(int categoryId, int index),
  }) {
    assert(init != null);
    assert(fetchPage != null);
    assert(read != null);
    return init(messages, categoryId, category, isLastPage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(List<Message> messages, int categoryId, String category,
        bool isLastPage),
    Result fetchPage(int categoryId, int page),
    Result read(int categoryId, int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(messages, categoryId, category, isLastPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result fetchPage(FetchPage value),
    @required Result read(Read value),
  }) {
    assert(init != null);
    assert(fetchPage != null);
    assert(read != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result fetchPage(FetchPage value),
    Result read(Read value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements MessageEvent {
  const factory Init(
      {List<Message> messages,
      int categoryId,
      String category,
      bool isLastPage}) = _$Init;

  List<Message> get messages;
  @override
  int get categoryId;
  String get category;
  bool get isLastPage;
  @override
  $InitCopyWith<Init> get copyWith;
}

abstract class $FetchPageCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory $FetchPageCopyWith(FetchPage value, $Res Function(FetchPage) then) =
      _$FetchPageCopyWithImpl<$Res>;
  @override
  $Res call({int categoryId, int page});
}

class _$FetchPageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $FetchPageCopyWith<$Res> {
  _$FetchPageCopyWithImpl(FetchPage _value, $Res Function(FetchPage) _then)
      : super(_value, (v) => _then(v as FetchPage));

  @override
  FetchPage get _value => super._value as FetchPage;

  @override
  $Res call({
    Object categoryId = freezed,
    Object page = freezed,
  }) {
    return _then(FetchPage(
      categoryId: categoryId == freezed ? _value.categoryId : categoryId as int,
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

class _$FetchPage implements FetchPage {
  const _$FetchPage({this.categoryId, this.page});

  @override
  final int categoryId;
  @override
  final int page;

  @override
  String toString() {
    return 'MessageEvent.fetchPage(categoryId: $categoryId, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchPage &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(page);

  @override
  $FetchPageCopyWith<FetchPage> get copyWith =>
      _$FetchPageCopyWithImpl<FetchPage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result init(List<Message> messages, int categoryId, String category,
            bool isLastPage),
    @required Result fetchPage(int categoryId, int page),
    @required Result read(int categoryId, int index),
  }) {
    assert(init != null);
    assert(fetchPage != null);
    assert(read != null);
    return fetchPage(categoryId, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(List<Message> messages, int categoryId, String category,
        bool isLastPage),
    Result fetchPage(int categoryId, int page),
    Result read(int categoryId, int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchPage != null) {
      return fetchPage(categoryId, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result fetchPage(FetchPage value),
    @required Result read(Read value),
  }) {
    assert(init != null);
    assert(fetchPage != null);
    assert(read != null);
    return fetchPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result fetchPage(FetchPage value),
    Result read(Read value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchPage != null) {
      return fetchPage(this);
    }
    return orElse();
  }
}

abstract class FetchPage implements MessageEvent {
  const factory FetchPage({int categoryId, int page}) = _$FetchPage;

  @override
  int get categoryId;
  int get page;
  @override
  $FetchPageCopyWith<FetchPage> get copyWith;
}

abstract class $ReadCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory $ReadCopyWith(Read value, $Res Function(Read) then) =
      _$ReadCopyWithImpl<$Res>;
  @override
  $Res call({int categoryId, int index});
}

class _$ReadCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $ReadCopyWith<$Res> {
  _$ReadCopyWithImpl(Read _value, $Res Function(Read) _then)
      : super(_value, (v) => _then(v as Read));

  @override
  Read get _value => super._value as Read;

  @override
  $Res call({
    Object categoryId = freezed,
    Object index = freezed,
  }) {
    return _then(Read(
      categoryId: categoryId == freezed ? _value.categoryId : categoryId as int,
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$Read implements Read {
  const _$Read({this.categoryId, this.index});

  @override
  final int categoryId;
  @override
  final int index;

  @override
  String toString() {
    return 'MessageEvent.read(categoryId: $categoryId, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Read &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(index);

  @override
  $ReadCopyWith<Read> get copyWith =>
      _$ReadCopyWithImpl<Read>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result init(List<Message> messages, int categoryId, String category,
            bool isLastPage),
    @required Result fetchPage(int categoryId, int page),
    @required Result read(int categoryId, int index),
  }) {
    assert(init != null);
    assert(fetchPage != null);
    assert(read != null);
    return read(categoryId, index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(List<Message> messages, int categoryId, String category,
        bool isLastPage),
    Result fetchPage(int categoryId, int page),
    Result read(int categoryId, int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (read != null) {
      return read(categoryId, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result fetchPage(FetchPage value),
    @required Result read(Read value),
  }) {
    assert(init != null);
    assert(fetchPage != null);
    assert(read != null);
    return read(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result fetchPage(FetchPage value),
    Result read(Read value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class Read implements MessageEvent {
  const factory Read({int categoryId, int index}) = _$Read;

  @override
  int get categoryId;
  int get index;
  @override
  $ReadCopyWith<Read> get copyWith;
}

class _$MessageStateTearOff {
  const _$MessageStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Failed failed({Failure error}) {
    return Failed(
      error: error,
    );
  }

  Loaded loaded(
      {List<Message> messages,
      String category,
      int categoryId,
      int page,
      bool isLoading,
      bool isLastPage}) {
    return Loaded(
      messages: messages,
      category: category,
      categoryId: categoryId,
      page: page,
      isLoading: isLoading,
      isLastPage: isLastPage,
    );
  }
}

// ignore: unused_element
const $MessageState = _$MessageStateTearOff();

mixin _$MessageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failed(Failure error),
    @required
        Result loaded(List<Message> messages, String category, int categoryId,
            int page, bool isLoading, bool isLastPage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failed(Failure error),
    Result loaded(List<Message> messages, String category, int categoryId,
        int page, bool isLoading, bool isLastPage),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result failed(Failed value),
    Result loaded(Loaded value),
    @required Result orElse(),
  });
}

abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
}

class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
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
    return 'MessageState.initial()';
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
    @required Result failed(Failure error),
    @required
        Result loaded(List<Message> messages, String category, int categoryId,
            int page, bool isLoading, bool isLastPage),
  }) {
    assert(initial != null);
    assert(failed != null);
    assert(loaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failed(Failure error),
    Result loaded(List<Message> messages, String category, int categoryId,
        int page, bool isLoading, bool isLastPage),
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
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(failed != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
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

abstract class Initial implements MessageState {
  const factory Initial() = _$Initial;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

class _$FailedCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
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
    return 'MessageState.failed(error: $error)';
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
    @required Result failed(Failure error),
    @required
        Result loaded(List<Message> messages, String category, int categoryId,
            int page, bool isLoading, bool isLastPage),
  }) {
    assert(initial != null);
    assert(failed != null);
    assert(loaded != null);
    return failed(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failed(Failure error),
    Result loaded(List<Message> messages, String category, int categoryId,
        int page, bool isLoading, bool isLastPage),
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
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(failed != null);
    assert(loaded != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
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

abstract class Failed implements MessageState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Message> messages,
      String category,
      int categoryId,
      int page,
      bool isLoading,
      bool isLastPage});
}

class _$LoadedCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object messages = freezed,
    Object category = freezed,
    Object categoryId = freezed,
    Object page = freezed,
    Object isLoading = freezed,
    Object isLastPage = freezed,
  }) {
    return _then(Loaded(
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
      category: category == freezed ? _value.category : category as String,
      categoryId: categoryId == freezed ? _value.categoryId : categoryId as int,
      page: page == freezed ? _value.page : page as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded(
      {this.messages,
      this.category,
      this.categoryId,
      this.page,
      this.isLoading,
      this.isLastPage});

  @override
  final List<Message> messages;
  @override
  final String category;
  @override
  final int categoryId;
  @override
  final int page;
  @override
  final bool isLoading;
  @override
  final bool isLastPage;

  @override
  String toString() {
    return 'MessageState.loaded(messages: $messages, category: $category, categoryId: $categoryId, page: $page, isLoading: $isLoading, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLastPage);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failed(Failure error),
    @required
        Result loaded(List<Message> messages, String category, int categoryId,
            int page, bool isLoading, bool isLastPage),
  }) {
    assert(initial != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(messages, category, categoryId, page, isLoading, isLastPage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failed(Failure error),
    Result loaded(List<Message> messages, String category, int categoryId,
        int page, bool isLoading, bool isLastPage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(
          messages, category, categoryId, page, isLoading, isLastPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result failed(Failed value),
    @required Result loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
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

abstract class Loaded implements MessageState {
  const factory Loaded(
      {List<Message> messages,
      String category,
      int categoryId,
      int page,
      bool isLoading,
      bool isLastPage}) = _$Loaded;

  List<Message> get messages;
  String get category;
  int get categoryId;
  int get page;
  bool get isLoading;
  bool get isLastPage;
  $LoadedCopyWith<Loaded> get copyWith;
}
