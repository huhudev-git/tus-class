import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/curriculum.dart';
import '../../domain/entities/curriculum_detail.dart';
import '../../domain/usecase/back_to_index_usecase.dart' as btiu;
import '../../domain/usecase/cache_curriculum_detail_usecase.dart' as ccdu;
import '../../domain/usecase/delete_curriculum_detail_usecase.dart' as dcdu;
import '../../domain/usecase/fetch_curriculum_detail_usecase.dart' as fcdu;
import '../../domain/usecase/get_curriculum_detail_usecase.dart' as gcdu;

part 'curriculum_detail_bloc.freezed.dart';
part 'curriculum_detail_event.dart';
part 'curriculum_detail_state.dart';

@injectable
class CurriculumDetailBloc extends Bloc<CurriculumDetailEvent, CurriculumDetailState> {
  final dcdu.DeleteCurriculumDetailUsecase _deleteCurriculumDetailUsecase;
  final ccdu.CacheCurriculumDetailUsecase _cacheCurriculumDetailUsecase;
  final gcdu.GetCurriculumDetailUsecase _getCurriculumDetailUsecase;
  final fcdu.FetchCurriculumDetailUsecase _fetchCurriculumDetailUsecase;
  final btiu.BackToIndexUsecase _backToIndexUsecase;

  CurriculumDetailBloc({
    @required ccdu.CacheCurriculumDetailUsecase cacheCurriculumDetailUsecase,
    @required dcdu.DeleteCurriculumDetailUsecase deleteCurriculumDetailUsecase,
    @required gcdu.GetCurriculumDetailUsecase getCurriculumDetailUsecase,
    @required fcdu.FetchCurriculumDetailUsecase fetchCurriculumDetailUsecase,
    @required btiu.BackToIndexUsecase backToIndexUsecase,
  })  : assert(cacheCurriculumDetailUsecase != null),
        assert(deleteCurriculumDetailUsecase != null),
        assert(getCurriculumDetailUsecase != null),
        assert(fetchCurriculumDetailUsecase != null),
        assert(backToIndexUsecase != null),
        _cacheCurriculumDetailUsecase = cacheCurriculumDetailUsecase,
        _getCurriculumDetailUsecase = getCurriculumDetailUsecase,
        _fetchCurriculumDetailUsecase = fetchCurriculumDetailUsecase,
        _deleteCurriculumDetailUsecase = deleteCurriculumDetailUsecase,
        _backToIndexUsecase = backToIndexUsecase;

  @override
  CurriculumDetailState get initialState => const CurriculumDetailState.initial();

  @override
  Stream<CurriculumDetailState> mapEventToState(
    CurriculumDetailEvent event,
  ) async* {
    yield* event.map(
      fetchCurriculumDetail: _mapFetchCurriculumDetailEvent,
      deleteCurriculumDetail: _mapDeleteCurriculumDetailEvent,
      clearCurriculumDetail: _mapClearCurriculumDetailEvent,
    );
  }

  Stream<CurriculumDetailState> _mapClearCurriculumDetailEvent(ClearCurriculumDetail event) async* {
    yield CurriculumDetailState.initial();
  }

  Stream<CurriculumDetailState> _mapDeleteCurriculumDetailEvent(DeleteCurriculumDetail event) async* {
    await _deleteCurriculumDetailUsecase(NoParams());
    yield const CurriculumDetailState.initial();
  }

  Stream<CurriculumDetailState> _mapFetchCurriculumDetailEvent(FetchCurriculumDetail event) async* {
    if (event.curriculums.isEmpty) {
      yield CurriculumDetailState.loaded(details: []);
      return;
    }

    yield const CurriculumDetailState.loading();
    final List<CurriculumDetail> details = [];

    for (final curriculum in event.curriculums) {
      if (!curriculum.hasDetail) {
        continue;
      }

      final failureOrCacheCurriculumDetail = await _getCurriculumDetailUsecase(gcdu.Params(code: curriculum.code));

      // get cache
      if (failureOrCacheCurriculumDetail.isRight()) {
        yield failureOrCacheCurriculumDetail.fold(
          (failure) => state, // TUSNoSyllabusFailure
          (detail) {
            details.add(detail);
            return CurriculumDetailState.loaded(details: [...details]);
          },
        );
        continue;
      }

      final failureOrDetail = await _fetchCurriculumDetailUsecase(fcdu.Params(
        code: curriculum.code,
        year: curriculum.year,
      ));

      yield* failureOrDetail.fold(
        (failure) async* {
          // has code but no detail
          if (failure is TUSNoSyllabusFailure) {
            yield state;
            // or will fetch every time loaded, so give it emptyCache
            await _cacheCurriculumDetailUsecase(ccdu.Params(detail: CurriculumDetail.emptyCache(curriculum.code, curriculum.year)));
          }
          yield state;
        },
        (detail) async* {
          details.add(detail);
          yield CurriculumDetailState.loaded(details: [...details]);
          await _cacheCurriculumDetailUsecase(ccdu.Params(detail: detail));
          await Future.delayed(Duration(milliseconds: 200));
        },
      );
    }
    // bug
    await _backToIndexUsecase(NoParams());
  }
}
