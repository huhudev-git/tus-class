import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/timetable.dart';
import '../../domain/usecase/cache_all_curriculum_usecase.dart' as cacu;
import '../../domain/usecase/fetch_all_curriculum_usecase.dart' as facu;
import '../../domain/usecase/get_all_curriculum_usecase.dart' as gacu;

part 'all_curriculum_bloc.freezed.dart';
part 'all_curriculum_event.dart';
part 'all_curriculum_state.dart';

@injectable
class AllCurriculumBloc extends Bloc<AllCurriculumEvent, AllCurriculumState> {
  final gacu.GetAllCurriculumUsecase _getAllCurriculumUsecase;
  final cacu.CacheAllCurriculumUsecase _cacheAllCurriculumUsecase;
  final facu.FetchAllCurriculumUsecase _fetchAllCurriculumUsecase;

  AllCurriculumBloc({
    @required gacu.GetAllCurriculumUsecase getAllCurriculumUsecase,
    @required cacu.CacheAllCurriculumUsecase cacheAllCurriculumUsecase,
    @required facu.FetchAllCurriculumUsecase fetchAllCurriculumUsecase,
  })  : assert(getAllCurriculumUsecase != null),
        assert(cacheAllCurriculumUsecase != null),
        assert(fetchAllCurriculumUsecase != null),
        _getAllCurriculumUsecase = getAllCurriculumUsecase,
        _cacheAllCurriculumUsecase = cacheAllCurriculumUsecase,
        _fetchAllCurriculumUsecase = fetchAllCurriculumUsecase,
        super(AllCurriculumState.initial());

  @override
  Stream<AllCurriculumState> mapEventToState(
    AllCurriculumEvent event,
  ) async* {
    yield* _mapFetchAllCurriculumEvent(event as FetchAllCurriculum);
  }

  Stream<AllCurriculumState> _mapFetchAllCurriculumEvent(FetchAllCurriculum event) async* {
    yield const AllCurriculumState.loading();

    if (!event.isRefresh) {
      final failureOrCacheAllCurriculum = await _getAllCurriculumUsecase(NoParams());

      // get cache
      if (failureOrCacheAllCurriculum.isRight()) {
        final newState = failureOrCacheAllCurriculum.fold(
          (failure) => state, // impossible
          (timeTable) => AllCurriculumState.loaded(timeTable: timeTable),
        );

        if (newState is Loaded) {
          yield newState;
          return;
        }
      }
    }

    final failureOrCurriculum = await _fetchAllCurriculumUsecase(NoParams());
    yield* failureOrCurriculum.fold(
      (failure) async* {
        yield AllCurriculumState.failed(error: failure);
      },
      (timeTable) async* {
        yield AllCurriculumState.loaded(timeTable: timeTable);
        // save cache
        await _cacheAllCurriculumUsecase(cacu.Params(timeTable: timeTable));
      },
    );
  }
}
