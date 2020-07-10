// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'syllabus_search_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SyllabusSearchDetailEventTearOff {
  const _$SyllabusSearchDetailEventTearOff();

  FetchSyllabusSearchDetail fetchSyllabusSearchDetail(
      {int index, int page, int year}) {
    return FetchSyllabusSearchDetail(
      index: index,
      page: page,
      year: year,
    );
  }

  Back back({int year, String code}) {
    return Back(
      year: year,
      code: code,
    );
  }
}

// ignore: unused_element
const $SyllabusSearchDetailEvent = _$SyllabusSearchDetailEventTearOff();

mixin _$SyllabusSearchDetailEvent {
  int get year;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchSyllabusSearchDetail(int index, int page, int year),
    @required Result back(int year, String code),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchSyllabusSearchDetail(int index, int page, int year),
    Result back(int year, String code),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchSyllabusSearchDetail(FetchSyllabusSearchDetail value),
    @required Result back(Back value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchSyllabusSearchDetail(FetchSyllabusSearchDetail value),
    Result back(Back value),
    @required Result orElse(),
  });

  $SyllabusSearchDetailEventCopyWith<SyllabusSearchDetailEvent> get copyWith;
}

abstract class $SyllabusSearchDetailEventCopyWith<$Res> {
  factory $SyllabusSearchDetailEventCopyWith(SyllabusSearchDetailEvent value,
          $Res Function(SyllabusSearchDetailEvent) then) =
      _$SyllabusSearchDetailEventCopyWithImpl<$Res>;
  $Res call({int year});
}

class _$SyllabusSearchDetailEventCopyWithImpl<$Res>
    implements $SyllabusSearchDetailEventCopyWith<$Res> {
  _$SyllabusSearchDetailEventCopyWithImpl(this._value, this._then);

  final SyllabusSearchDetailEvent _value;
  // ignore: unused_field
  final $Res Function(SyllabusSearchDetailEvent) _then;

  @override
  $Res call({
    Object year = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed ? _value.year : year as int,
    ));
  }
}

abstract class $FetchSyllabusSearchDetailCopyWith<$Res>
    implements $SyllabusSearchDetailEventCopyWith<$Res> {
  factory $FetchSyllabusSearchDetailCopyWith(FetchSyllabusSearchDetail value,
          $Res Function(FetchSyllabusSearchDetail) then) =
      _$FetchSyllabusSearchDetailCopyWithImpl<$Res>;
  @override
  $Res call({int index, int page, int year});
}

class _$FetchSyllabusSearchDetailCopyWithImpl<$Res>
    extends _$SyllabusSearchDetailEventCopyWithImpl<$Res>
    implements $FetchSyllabusSearchDetailCopyWith<$Res> {
  _$FetchSyllabusSearchDetailCopyWithImpl(FetchSyllabusSearchDetail _value,
      $Res Function(FetchSyllabusSearchDetail) _then)
      : super(_value, (v) => _then(v as FetchSyllabusSearchDetail));

  @override
  FetchSyllabusSearchDetail get _value =>
      super._value as FetchSyllabusSearchDetail;

  @override
  $Res call({
    Object index = freezed,
    Object page = freezed,
    Object year = freezed,
  }) {
    return _then(FetchSyllabusSearchDetail(
      index: index == freezed ? _value.index : index as int,
      page: page == freezed ? _value.page : page as int,
      year: year == freezed ? _value.year : year as int,
    ));
  }
}

class _$FetchSyllabusSearchDetail implements FetchSyllabusSearchDetail {
  const _$FetchSyllabusSearchDetail({this.index, this.page, this.year});

  @override
  final int index;
  @override
  final int page;
  @override
  final int year;

  @override
  String toString() {
    return 'SyllabusSearchDetailEvent.fetchSyllabusSearchDetail(index: $index, page: $page, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchSyllabusSearchDetail &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(year);

  @override
  $FetchSyllabusSearchDetailCopyWith<FetchSyllabusSearchDetail> get copyWith =>
      _$FetchSyllabusSearchDetailCopyWithImpl<FetchSyllabusSearchDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchSyllabusSearchDetail(int index, int page, int year),
    @required Result back(int year, String code),
  }) {
    assert(fetchSyllabusSearchDetail != null);
    assert(back != null);
    return fetchSyllabusSearchDetail(index, page, year);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchSyllabusSearchDetail(int index, int page, int year),
    Result back(int year, String code),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchSyllabusSearchDetail != null) {
      return fetchSyllabusSearchDetail(index, page, year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchSyllabusSearchDetail(FetchSyllabusSearchDetail value),
    @required Result back(Back value),
  }) {
    assert(fetchSyllabusSearchDetail != null);
    assert(back != null);
    return fetchSyllabusSearchDetail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchSyllabusSearchDetail(FetchSyllabusSearchDetail value),
    Result back(Back value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchSyllabusSearchDetail != null) {
      return fetchSyllabusSearchDetail(this);
    }
    return orElse();
  }
}

abstract class FetchSyllabusSearchDetail implements SyllabusSearchDetailEvent {
  const factory FetchSyllabusSearchDetail({int index, int page, int year}) =
      _$FetchSyllabusSearchDetail;

  int get index;
  int get page;
  @override
  int get year;
  @override
  $FetchSyllabusSearchDetailCopyWith<FetchSyllabusSearchDetail> get copyWith;
}

abstract class $BackCopyWith<$Res>
    implements $SyllabusSearchDetailEventCopyWith<$Res> {
  factory $BackCopyWith(Back value, $Res Function(Back) then) =
      _$BackCopyWithImpl<$Res>;
  @override
  $Res call({int year, String code});
}

class _$BackCopyWithImpl<$Res>
    extends _$SyllabusSearchDetailEventCopyWithImpl<$Res>
    implements $BackCopyWith<$Res> {
  _$BackCopyWithImpl(Back _value, $Res Function(Back) _then)
      : super(_value, (v) => _then(v as Back));

  @override
  Back get _value => super._value as Back;

  @override
  $Res call({
    Object year = freezed,
    Object code = freezed,
  }) {
    return _then(Back(
      year: year == freezed ? _value.year : year as int,
      code: code == freezed ? _value.code : code as String,
    ));
  }
}

class _$Back implements Back {
  const _$Back({this.year, this.code});

  @override
  final int year;
  @override
  final String code;

  @override
  String toString() {
    return 'SyllabusSearchDetailEvent.back(year: $year, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Back &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(code);

  @override
  $BackCopyWith<Back> get copyWith =>
      _$BackCopyWithImpl<Back>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchSyllabusSearchDetail(int index, int page, int year),
    @required Result back(int year, String code),
  }) {
    assert(fetchSyllabusSearchDetail != null);
    assert(back != null);
    return back(year, code);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchSyllabusSearchDetail(int index, int page, int year),
    Result back(int year, String code),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (back != null) {
      return back(year, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchSyllabusSearchDetail(FetchSyllabusSearchDetail value),
    @required Result back(Back value),
  }) {
    assert(fetchSyllabusSearchDetail != null);
    assert(back != null);
    return back(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchSyllabusSearchDetail(FetchSyllabusSearchDetail value),
    Result back(Back value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class Back implements SyllabusSearchDetailEvent {
  const factory Back({int year, String code}) = _$Back;

  @override
  int get year;
  String get code;
  @override
  $BackCopyWith<Back> get copyWith;
}

class _$SyllabusSearchDetailStateTearOff {
  const _$SyllabusSearchDetailStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded({SyllabusDetail detail}) {
    return Loaded(
      detail: detail,
    );
  }

  Failed failed({Failure error}) {
    return Failed(
      error: error,
    );
  }
}

// ignore: unused_element
const $SyllabusSearchDetailState = _$SyllabusSearchDetailStateTearOff();

mixin _$SyllabusSearchDetailState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(SyllabusDetail detail),
    @required Result failed(Failure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(SyllabusDetail detail),
    Result failed(Failure error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  });
}

abstract class $SyllabusSearchDetailStateCopyWith<$Res> {
  factory $SyllabusSearchDetailStateCopyWith(SyllabusSearchDetailState value,
          $Res Function(SyllabusSearchDetailState) then) =
      _$SyllabusSearchDetailStateCopyWithImpl<$Res>;
}

class _$SyllabusSearchDetailStateCopyWithImpl<$Res>
    implements $SyllabusSearchDetailStateCopyWith<$Res> {
  _$SyllabusSearchDetailStateCopyWithImpl(this._value, this._then);

  final SyllabusSearchDetailState _value;
  // ignore: unused_field
  final $Res Function(SyllabusSearchDetailState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$SyllabusSearchDetailStateCopyWithImpl<$Res>
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
    return 'SyllabusSearchDetailState.initial()';
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
    @required Result loaded(SyllabusDetail detail),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(SyllabusDetail detail),
    Result failed(Failure error),
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
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SyllabusSearchDetailState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res>
    extends _$SyllabusSearchDetailStateCopyWithImpl<$Res>
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
    return 'SyllabusSearchDetailState.loading()';
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
    @required Result loaded(SyllabusDetail detail),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(SyllabusDetail detail),
    Result failed(Failure error),
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
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SyllabusSearchDetailState {
  const factory Loading() = _$Loading;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({SyllabusDetail detail});
}

class _$LoadedCopyWithImpl<$Res>
    extends _$SyllabusSearchDetailStateCopyWithImpl<$Res>
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
      detail: detail == freezed ? _value.detail : detail as SyllabusDetail,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded({this.detail});

  @override
  final SyllabusDetail detail;

  @override
  String toString() {
    return 'SyllabusSearchDetailState.loaded(detail: $detail)';
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
    @required Result loading(),
    @required Result loaded(SyllabusDetail detail),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(detail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(SyllabusDetail detail),
    Result failed(Failure error),
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
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements SyllabusSearchDetailState {
  const factory Loaded({SyllabusDetail detail}) = _$Loaded;

  SyllabusDetail get detail;
  $LoadedCopyWith<Loaded> get copyWith;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

class _$FailedCopyWithImpl<$Res>
    extends _$SyllabusSearchDetailStateCopyWithImpl<$Res>
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
    return 'SyllabusSearchDetailState.failed(error: $error)';
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
    @required Result loaded(SyllabusDetail detail),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return failed(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(SyllabusDetail detail),
    Result failed(Failure error),
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
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements SyllabusSearchDetailState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}
