// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'curriculum_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CurriculumDetailEventTearOff {
  const _$CurriculumDetailEventTearOff();

  ClearCurriculumDetail clearCurriculumDetail() {
    return const ClearCurriculumDetail();
  }

  FetchCurriculumDetail fetchCurriculumDetail({List<Curriculum> curriculums}) {
    return FetchCurriculumDetail(
      curriculums: curriculums,
    );
  }

  DeleteCurriculumDetail deleteCurriculumDetail() {
    return const DeleteCurriculumDetail();
  }
}

// ignore: unused_element
const $CurriculumDetailEvent = _$CurriculumDetailEventTearOff();

mixin _$CurriculumDetailEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result clearCurriculumDetail(),
    @required Result fetchCurriculumDetail(List<Curriculum> curriculums),
    @required Result deleteCurriculumDetail(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result clearCurriculumDetail(),
    Result fetchCurriculumDetail(List<Curriculum> curriculums),
    Result deleteCurriculumDetail(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result clearCurriculumDetail(ClearCurriculumDetail value),
    @required Result fetchCurriculumDetail(FetchCurriculumDetail value),
    @required Result deleteCurriculumDetail(DeleteCurriculumDetail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result clearCurriculumDetail(ClearCurriculumDetail value),
    Result fetchCurriculumDetail(FetchCurriculumDetail value),
    Result deleteCurriculumDetail(DeleteCurriculumDetail value),
    @required Result orElse(),
  });
}

abstract class $CurriculumDetailEventCopyWith<$Res> {
  factory $CurriculumDetailEventCopyWith(CurriculumDetailEvent value,
          $Res Function(CurriculumDetailEvent) then) =
      _$CurriculumDetailEventCopyWithImpl<$Res>;
}

class _$CurriculumDetailEventCopyWithImpl<$Res>
    implements $CurriculumDetailEventCopyWith<$Res> {
  _$CurriculumDetailEventCopyWithImpl(this._value, this._then);

  final CurriculumDetailEvent _value;
  // ignore: unused_field
  final $Res Function(CurriculumDetailEvent) _then;
}

abstract class $ClearCurriculumDetailCopyWith<$Res> {
  factory $ClearCurriculumDetailCopyWith(ClearCurriculumDetail value,
          $Res Function(ClearCurriculumDetail) then) =
      _$ClearCurriculumDetailCopyWithImpl<$Res>;
}

class _$ClearCurriculumDetailCopyWithImpl<$Res>
    extends _$CurriculumDetailEventCopyWithImpl<$Res>
    implements $ClearCurriculumDetailCopyWith<$Res> {
  _$ClearCurriculumDetailCopyWithImpl(
      ClearCurriculumDetail _value, $Res Function(ClearCurriculumDetail) _then)
      : super(_value, (v) => _then(v as ClearCurriculumDetail));

  @override
  ClearCurriculumDetail get _value => super._value as ClearCurriculumDetail;
}

class _$ClearCurriculumDetail implements ClearCurriculumDetail {
  const _$ClearCurriculumDetail();

  @override
  String toString() {
    return 'CurriculumDetailEvent.clearCurriculumDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClearCurriculumDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result clearCurriculumDetail(),
    @required Result fetchCurriculumDetail(List<Curriculum> curriculums),
    @required Result deleteCurriculumDetail(),
  }) {
    assert(clearCurriculumDetail != null);
    assert(fetchCurriculumDetail != null);
    assert(deleteCurriculumDetail != null);
    return clearCurriculumDetail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result clearCurriculumDetail(),
    Result fetchCurriculumDetail(List<Curriculum> curriculums),
    Result deleteCurriculumDetail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearCurriculumDetail != null) {
      return clearCurriculumDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result clearCurriculumDetail(ClearCurriculumDetail value),
    @required Result fetchCurriculumDetail(FetchCurriculumDetail value),
    @required Result deleteCurriculumDetail(DeleteCurriculumDetail value),
  }) {
    assert(clearCurriculumDetail != null);
    assert(fetchCurriculumDetail != null);
    assert(deleteCurriculumDetail != null);
    return clearCurriculumDetail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result clearCurriculumDetail(ClearCurriculumDetail value),
    Result fetchCurriculumDetail(FetchCurriculumDetail value),
    Result deleteCurriculumDetail(DeleteCurriculumDetail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clearCurriculumDetail != null) {
      return clearCurriculumDetail(this);
    }
    return orElse();
  }
}

abstract class ClearCurriculumDetail implements CurriculumDetailEvent {
  const factory ClearCurriculumDetail() = _$ClearCurriculumDetail;
}

abstract class $FetchCurriculumDetailCopyWith<$Res> {
  factory $FetchCurriculumDetailCopyWith(FetchCurriculumDetail value,
          $Res Function(FetchCurriculumDetail) then) =
      _$FetchCurriculumDetailCopyWithImpl<$Res>;
  $Res call({List<Curriculum> curriculums});
}

class _$FetchCurriculumDetailCopyWithImpl<$Res>
    extends _$CurriculumDetailEventCopyWithImpl<$Res>
    implements $FetchCurriculumDetailCopyWith<$Res> {
  _$FetchCurriculumDetailCopyWithImpl(
      FetchCurriculumDetail _value, $Res Function(FetchCurriculumDetail) _then)
      : super(_value, (v) => _then(v as FetchCurriculumDetail));

  @override
  FetchCurriculumDetail get _value => super._value as FetchCurriculumDetail;

  @override
  $Res call({
    Object curriculums = freezed,
  }) {
    return _then(FetchCurriculumDetail(
      curriculums: curriculums == freezed
          ? _value.curriculums
          : curriculums as List<Curriculum>,
    ));
  }
}

class _$FetchCurriculumDetail implements FetchCurriculumDetail {
  const _$FetchCurriculumDetail({this.curriculums});

  @override
  final List<Curriculum> curriculums;

  @override
  String toString() {
    return 'CurriculumDetailEvent.fetchCurriculumDetail(curriculums: $curriculums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchCurriculumDetail &&
            (identical(other.curriculums, curriculums) ||
                const DeepCollectionEquality()
                    .equals(other.curriculums, curriculums)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(curriculums);

  @override
  $FetchCurriculumDetailCopyWith<FetchCurriculumDetail> get copyWith =>
      _$FetchCurriculumDetailCopyWithImpl<FetchCurriculumDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result clearCurriculumDetail(),
    @required Result fetchCurriculumDetail(List<Curriculum> curriculums),
    @required Result deleteCurriculumDetail(),
  }) {
    assert(clearCurriculumDetail != null);
    assert(fetchCurriculumDetail != null);
    assert(deleteCurriculumDetail != null);
    return fetchCurriculumDetail(curriculums);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result clearCurriculumDetail(),
    Result fetchCurriculumDetail(List<Curriculum> curriculums),
    Result deleteCurriculumDetail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchCurriculumDetail != null) {
      return fetchCurriculumDetail(curriculums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result clearCurriculumDetail(ClearCurriculumDetail value),
    @required Result fetchCurriculumDetail(FetchCurriculumDetail value),
    @required Result deleteCurriculumDetail(DeleteCurriculumDetail value),
  }) {
    assert(clearCurriculumDetail != null);
    assert(fetchCurriculumDetail != null);
    assert(deleteCurriculumDetail != null);
    return fetchCurriculumDetail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result clearCurriculumDetail(ClearCurriculumDetail value),
    Result fetchCurriculumDetail(FetchCurriculumDetail value),
    Result deleteCurriculumDetail(DeleteCurriculumDetail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchCurriculumDetail != null) {
      return fetchCurriculumDetail(this);
    }
    return orElse();
  }
}

abstract class FetchCurriculumDetail implements CurriculumDetailEvent {
  const factory FetchCurriculumDetail({List<Curriculum> curriculums}) =
      _$FetchCurriculumDetail;

  List<Curriculum> get curriculums;
  $FetchCurriculumDetailCopyWith<FetchCurriculumDetail> get copyWith;
}

abstract class $DeleteCurriculumDetailCopyWith<$Res> {
  factory $DeleteCurriculumDetailCopyWith(DeleteCurriculumDetail value,
          $Res Function(DeleteCurriculumDetail) then) =
      _$DeleteCurriculumDetailCopyWithImpl<$Res>;
}

class _$DeleteCurriculumDetailCopyWithImpl<$Res>
    extends _$CurriculumDetailEventCopyWithImpl<$Res>
    implements $DeleteCurriculumDetailCopyWith<$Res> {
  _$DeleteCurriculumDetailCopyWithImpl(DeleteCurriculumDetail _value,
      $Res Function(DeleteCurriculumDetail) _then)
      : super(_value, (v) => _then(v as DeleteCurriculumDetail));

  @override
  DeleteCurriculumDetail get _value => super._value as DeleteCurriculumDetail;
}

class _$DeleteCurriculumDetail implements DeleteCurriculumDetail {
  const _$DeleteCurriculumDetail();

  @override
  String toString() {
    return 'CurriculumDetailEvent.deleteCurriculumDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteCurriculumDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result clearCurriculumDetail(),
    @required Result fetchCurriculumDetail(List<Curriculum> curriculums),
    @required Result deleteCurriculumDetail(),
  }) {
    assert(clearCurriculumDetail != null);
    assert(fetchCurriculumDetail != null);
    assert(deleteCurriculumDetail != null);
    return deleteCurriculumDetail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result clearCurriculumDetail(),
    Result fetchCurriculumDetail(List<Curriculum> curriculums),
    Result deleteCurriculumDetail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCurriculumDetail != null) {
      return deleteCurriculumDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result clearCurriculumDetail(ClearCurriculumDetail value),
    @required Result fetchCurriculumDetail(FetchCurriculumDetail value),
    @required Result deleteCurriculumDetail(DeleteCurriculumDetail value),
  }) {
    assert(clearCurriculumDetail != null);
    assert(fetchCurriculumDetail != null);
    assert(deleteCurriculumDetail != null);
    return deleteCurriculumDetail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result clearCurriculumDetail(ClearCurriculumDetail value),
    Result fetchCurriculumDetail(FetchCurriculumDetail value),
    Result deleteCurriculumDetail(DeleteCurriculumDetail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCurriculumDetail != null) {
      return deleteCurriculumDetail(this);
    }
    return orElse();
  }
}

abstract class DeleteCurriculumDetail implements CurriculumDetailEvent {
  const factory DeleteCurriculumDetail() = _$DeleteCurriculumDetail;
}

class _$CurriculumDetailStateTearOff {
  const _$CurriculumDetailStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Failed failed({Failure error}) {
    return Failed(
      error: error,
    );
  }

  Loaded loaded({List<CurriculumDetail> details}) {
    return Loaded(
      details: details,
    );
  }
}

// ignore: unused_element
const $CurriculumDetailState = _$CurriculumDetailStateTearOff();

mixin _$CurriculumDetailState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumDetail> details),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumDetail> details),
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

abstract class $CurriculumDetailStateCopyWith<$Res> {
  factory $CurriculumDetailStateCopyWith(CurriculumDetailState value,
          $Res Function(CurriculumDetailState) then) =
      _$CurriculumDetailStateCopyWithImpl<$Res>;
}

class _$CurriculumDetailStateCopyWithImpl<$Res>
    implements $CurriculumDetailStateCopyWith<$Res> {
  _$CurriculumDetailStateCopyWithImpl(this._value, this._then);

  final CurriculumDetailState _value;
  // ignore: unused_field
  final $Res Function(CurriculumDetailState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$CurriculumDetailStateCopyWithImpl<$Res>
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
    return 'CurriculumDetailState.initial()';
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
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumDetail> details),
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
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumDetail> details),
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

abstract class Initial implements CurriculumDetailState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res>
    extends _$CurriculumDetailStateCopyWithImpl<$Res>
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
    return 'CurriculumDetailState.loading()';
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
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumDetail> details),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumDetail> details),
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

abstract class Loading implements CurriculumDetailState {
  const factory Loading() = _$Loading;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

class _$FailedCopyWithImpl<$Res>
    extends _$CurriculumDetailStateCopyWithImpl<$Res>
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
    return 'CurriculumDetailState.failed(error: $error)';
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
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumDetail> details),
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
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumDetail> details),
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

abstract class Failed implements CurriculumDetailState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<CurriculumDetail> details});
}

class _$LoadedCopyWithImpl<$Res>
    extends _$CurriculumDetailStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object details = freezed,
  }) {
    return _then(Loaded(
      details: details == freezed
          ? _value.details
          : details as List<CurriculumDetail>,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded({this.details});

  @override
  final List<CurriculumDetail> details;

  @override
  String toString() {
    return 'CurriculumDetailState.loaded(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(details);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failed(Failure error),
    @required Result loaded(List<CurriculumDetail> details),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failed != null);
    assert(loaded != null);
    return loaded(details);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failed(Failure error),
    Result loaded(List<CurriculumDetail> details),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(details);
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

abstract class Loaded implements CurriculumDetailState {
  const factory Loaded({List<CurriculumDetail> details}) = _$Loaded;

  List<CurriculumDetail> get details;
  $LoadedCopyWith<Loaded> get copyWith;
}
