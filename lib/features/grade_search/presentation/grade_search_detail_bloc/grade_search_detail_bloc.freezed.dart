// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grade_search_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GradeSearchDetailEventTearOff {
  const _$GradeSearchDetailEventTearOff();

  FetchGradeSearchDetail fetchGradeSearchDetail(
      {int year, String code, int page, int index}) {
    return FetchGradeSearchDetail(
      year: year,
      code: code,
      page: page,
      index: index,
    );
  }
}

// ignore: unused_element
const $GradeSearchDetailEvent = _$GradeSearchDetailEventTearOff();

mixin _$GradeSearchDetailEvent {
  int get year;
  String get code;
  int get page;
  int get index;

  $GradeSearchDetailEventCopyWith<GradeSearchDetailEvent> get copyWith;
}

abstract class $GradeSearchDetailEventCopyWith<$Res> {
  factory $GradeSearchDetailEventCopyWith(GradeSearchDetailEvent value,
          $Res Function(GradeSearchDetailEvent) then) =
      _$GradeSearchDetailEventCopyWithImpl<$Res>;
  $Res call({int year, String code, int page, int index});
}

class _$GradeSearchDetailEventCopyWithImpl<$Res>
    implements $GradeSearchDetailEventCopyWith<$Res> {
  _$GradeSearchDetailEventCopyWithImpl(this._value, this._then);

  final GradeSearchDetailEvent _value;
  // ignore: unused_field
  final $Res Function(GradeSearchDetailEvent) _then;

  @override
  $Res call({
    Object year = freezed,
    Object code = freezed,
    Object page = freezed,
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed ? _value.year : year as int,
      code: code == freezed ? _value.code : code as String,
      page: page == freezed ? _value.page : page as int,
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class $FetchGradeSearchDetailCopyWith<$Res>
    implements $GradeSearchDetailEventCopyWith<$Res> {
  factory $FetchGradeSearchDetailCopyWith(FetchGradeSearchDetail value,
          $Res Function(FetchGradeSearchDetail) then) =
      _$FetchGradeSearchDetailCopyWithImpl<$Res>;
  @override
  $Res call({int year, String code, int page, int index});
}

class _$FetchGradeSearchDetailCopyWithImpl<$Res>
    extends _$GradeSearchDetailEventCopyWithImpl<$Res>
    implements $FetchGradeSearchDetailCopyWith<$Res> {
  _$FetchGradeSearchDetailCopyWithImpl(FetchGradeSearchDetail _value,
      $Res Function(FetchGradeSearchDetail) _then)
      : super(_value, (v) => _then(v as FetchGradeSearchDetail));

  @override
  FetchGradeSearchDetail get _value => super._value as FetchGradeSearchDetail;

  @override
  $Res call({
    Object year = freezed,
    Object code = freezed,
    Object page = freezed,
    Object index = freezed,
  }) {
    return _then(FetchGradeSearchDetail(
      year: year == freezed ? _value.year : year as int,
      code: code == freezed ? _value.code : code as String,
      page: page == freezed ? _value.page : page as int,
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

class _$FetchGradeSearchDetail implements FetchGradeSearchDetail {
  const _$FetchGradeSearchDetail({this.year, this.code, this.page, this.index});

  @override
  final int year;
  @override
  final String code;
  @override
  final int page;
  @override
  final int index;

  @override
  String toString() {
    return 'GradeSearchDetailEvent.fetchGradeSearchDetail(year: $year, code: $code, page: $page, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchGradeSearchDetail &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(index);

  @override
  $FetchGradeSearchDetailCopyWith<FetchGradeSearchDetail> get copyWith =>
      _$FetchGradeSearchDetailCopyWithImpl<FetchGradeSearchDetail>(
          this, _$identity);
}

abstract class FetchGradeSearchDetail implements GradeSearchDetailEvent {
  const factory FetchGradeSearchDetail(
      {int year, String code, int page, int index}) = _$FetchGradeSearchDetail;

  @override
  int get year;
  @override
  String get code;
  @override
  int get page;
  @override
  int get index;
  @override
  $FetchGradeSearchDetailCopyWith<FetchGradeSearchDetail> get copyWith;
}

class _$GradeSearchDetailStateTearOff {
  const _$GradeSearchDetailStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded({GradeDetail detail}) {
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
const $GradeSearchDetailState = _$GradeSearchDetailStateTearOff();

mixin _$GradeSearchDetailState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(GradeDetail detail),
    @required Result failed(Failure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(GradeDetail detail),
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

abstract class $GradeSearchDetailStateCopyWith<$Res> {
  factory $GradeSearchDetailStateCopyWith(GradeSearchDetailState value,
          $Res Function(GradeSearchDetailState) then) =
      _$GradeSearchDetailStateCopyWithImpl<$Res>;
}

class _$GradeSearchDetailStateCopyWithImpl<$Res>
    implements $GradeSearchDetailStateCopyWith<$Res> {
  _$GradeSearchDetailStateCopyWithImpl(this._value, this._then);

  final GradeSearchDetailState _value;
  // ignore: unused_field
  final $Res Function(GradeSearchDetailState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$GradeSearchDetailStateCopyWithImpl<$Res>
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
    return 'GradeSearchDetailState.initial()';
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
    @required Result loaded(GradeDetail detail),
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
    Result loaded(GradeDetail detail),
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

abstract class Initial implements GradeSearchDetailState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res>
    extends _$GradeSearchDetailStateCopyWithImpl<$Res>
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
    return 'GradeSearchDetailState.loading()';
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
    @required Result loaded(GradeDetail detail),
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
    Result loaded(GradeDetail detail),
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

abstract class Loading implements GradeSearchDetailState {
  const factory Loading() = _$Loading;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({GradeDetail detail});
}

class _$LoadedCopyWithImpl<$Res>
    extends _$GradeSearchDetailStateCopyWithImpl<$Res>
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
      detail: detail == freezed ? _value.detail : detail as GradeDetail,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded({this.detail});

  @override
  final GradeDetail detail;

  @override
  String toString() {
    return 'GradeSearchDetailState.loaded(detail: $detail)';
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
    @required Result loaded(GradeDetail detail),
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
    Result loaded(GradeDetail detail),
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

abstract class Loaded implements GradeSearchDetailState {
  const factory Loaded({GradeDetail detail}) = _$Loaded;

  GradeDetail get detail;
  $LoadedCopyWith<Loaded> get copyWith;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

class _$FailedCopyWithImpl<$Res>
    extends _$GradeSearchDetailStateCopyWithImpl<$Res>
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
    return 'GradeSearchDetailState.failed(error: $error)';
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
    @required Result loaded(GradeDetail detail),
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
    Result loaded(GradeDetail detail),
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

abstract class Failed implements GradeSearchDetailState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}
