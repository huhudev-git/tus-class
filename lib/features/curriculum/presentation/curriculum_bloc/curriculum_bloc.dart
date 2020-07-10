import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/timetable.dart';
import '../../domain/usecase/cache_curriculum_usecase.dart' as ccu;
import '../../domain/usecase/fetch_curriculum_usecase.dart' as fcu;
import '../../domain/usecase/get_curriculum_usecase.dart' as gcu;

part 'curriculum_bloc.freezed.dart';
part 'curriculum_event.dart';
part 'curriculum_state.dart';

@injectable
class CurriculumBloc extends Bloc<CurriculumEvent, CurriculumState> {
  final gcu.GetCurriculumUsecase _getCurriculumUsecase;
  final ccu.CacheCurriculumUsecase _cacheCurriculumUsecase;
  final fcu.FetchCurriculumUsecase _fetchCurriculumUsecase;

  CurriculumBloc({
    @required gcu.GetCurriculumUsecase getCurriculumUsecase,
    @required ccu.CacheCurriculumUsecase cacheCurriculumUsecase,
    @required fcu.FetchCurriculumUsecase fetchCurriculumUsecase,
  })  : assert(getCurriculumUsecase != null),
        assert(cacheCurriculumUsecase != null),
        assert(fetchCurriculumUsecase != null),
        _getCurriculumUsecase = getCurriculumUsecase,
        _cacheCurriculumUsecase = cacheCurriculumUsecase,
        _fetchCurriculumUsecase = fetchCurriculumUsecase;

  @override
  CurriculumState get initialState => CurriculumState.initial();

  @override
  Stream<CurriculumState> mapEventToState(
    CurriculumEvent event,
  ) async* {
    yield* _mapFetchCurriculumEvent(event as FetchCurriculum);
  }

  Stream<CurriculumState> _mapFetchCurriculumEvent(FetchCurriculum event) async* {
    yield const CurriculumState.loading();

    if (!event.isRefresh) {
      // get cache
      final failureOrCacheTimeTable = await _getCurriculumUsecase(gcu.Params(
        semesterValue: event.semesterValue,
        year: event.year,
      ));

      if (failureOrCacheTimeTable.isRight()) {
        final newState = failureOrCacheTimeTable.fold(
          (failure) => state, // impossible
          (timeTable) => CurriculumState.loaded(timeTable: timeTable),
        );

        if (newState is Loaded) {
          yield newState;
          return;
        }
      }
    }

    final failureOrTimeTable = await _fetchCurriculumUsecase(
      fcu.Params(
        semesterValue: event.semesterValue,
        year: event.year,
      ),
    );

    yield* failureOrTimeTable.fold(
      (failure) async* {
        yield CurriculumState.failed(error: failure);
      },
      (timeTable) async* {
        yield CurriculumState.loaded(timeTable: timeTable);
        // save cache
        await _cacheCurriculumUsecase(ccu.Params(timeTable: timeTable));
      },
    );
  }
}
