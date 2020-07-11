import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/syllabus_detail.dart';
import '../../domain/usecase/fetch_syllabus_detail_usecase.dart' as fsdu;
import '../../domain/usecase/syllabus_detail_back_usecase.dart' as sdbu;

part 'syllabus_search_detail_bloc.freezed.dart';
part 'syllabus_search_detail_event.dart';
part 'syllabus_search_detail_state.dart';

@injectable
class SyllabusSearchDetailBloc extends Bloc<SyllabusSearchDetailEvent, SyllabusSearchDetailState> {
  final fsdu.FetchSyllabusDetailUsecase _fetSyllabusDetailUsecase;
  final sdbu.SyllabusDetailBackUsecase _syllabusDetailBackUsecase;

  SyllabusSearchDetailBloc({
    @required fsdu.FetchSyllabusDetailUsecase fetSyllabusDetailUsecase,
    @required sdbu.SyllabusDetailBackUsecase syllabusDetailBackUsecase,
  })  : assert(fetSyllabusDetailUsecase != null),
        assert(syllabusDetailBackUsecase != null),
        _fetSyllabusDetailUsecase = fetSyllabusDetailUsecase,
        _syllabusDetailBackUsecase = syllabusDetailBackUsecase,
        super(SyllabusSearchDetailState.initial());

  @override
  Stream<SyllabusSearchDetailState> mapEventToState(
    SyllabusSearchDetailEvent event,
  ) async* {
    yield* event.map(
      fetchSyllabusSearchDetail: _mapFetchSyllabusSearchDetailEvent,
      back: _mapBackEvent,
    );
  }

  Stream<SyllabusSearchDetailState> _mapFetchSyllabusSearchDetailEvent(FetchSyllabusSearchDetail event) async* {
    yield const SyllabusSearchDetailState.loading();
    final failureOrDetail = await _fetSyllabusDetailUsecase(fsdu.Params(index: event.index, page: event.page, year: event.year));
    yield failureOrDetail.fold(
      (failure) => SyllabusSearchDetailState.failed(error: failure),
      (detail) => SyllabusSearchDetailState.loaded(detail: detail),
    );
  }

  Stream<SyllabusSearchDetailState> _mapBackEvent(Back event) async* {
    await _syllabusDetailBackUsecase(sdbu.Params(year: event.year, code: event.code));
    // TODO: handle error, unneressary but happend may crash page logic

    //final failureOrSuccess = await _syllabusDetailBackUsecase(sdbu.Params(year: event.year, code: event.code));
    //yield failureOrSuccess.fold(
    //  (failure) => SyllabusSearchDetailState.failed(error: failure),
    //  (success) => SyllabusSearchDetailState.loaded(detail: detail),
    //);
  }
}
