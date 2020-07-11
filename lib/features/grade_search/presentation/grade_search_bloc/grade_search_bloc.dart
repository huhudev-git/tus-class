import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/grade.dart';
import '../../domain/usecase/fetch_grade_search_page_usecase.dart' as fgspu;
import '../../domain/usecase/search_grade_usecase.dart' as sgu;

part 'grade_search_bloc.freezed.dart';
part 'grade_search_event.dart';
part 'grade_search_state.dart';

@injectable
class GradeSearchBloc extends Bloc<GradeSearchEvent, GradeSearchState> {
  final sgu.SearchGradeUsecase _searchGradeUsecase;
  final fgspu.FetchGradeSearchPageUsecase _fetchGradeSearchPageUsecase;

  GradeSearchBloc({
    @required sgu.SearchGradeUsecase searchGradeUsecase,
    @required fgspu.FetchGradeSearchPageUsecase fetchGradeSearchPageUsecase,
  })  : assert(searchGradeUsecase != null),
        assert(fetchGradeSearchPageUsecase != null),
        _searchGradeUsecase = searchGradeUsecase,
        _fetchGradeSearchPageUsecase = fetchGradeSearchPageUsecase,
        super(GradeSearchState.initial());

  @override
  Stream<GradeSearchState> mapEventToState(
    GradeSearchEvent event,
  ) async* {
    yield* event.map(
      init: _mapInitEvent,
      search: _mapSearchEvent,
      fetchPage: _mapFetchPageEvent,
    );
  }

  Stream<GradeSearchState> _mapInitEvent(Init event) async* {
    yield const GradeSearchState.initial();
  }

  Stream<GradeSearchState> _mapSearchEvent(Search event) async* {
    yield const GradeSearchState.loading();

    final failureOrResult = await _searchGradeUsecase(
      sgu.Params(
        key: event.key,
        year: event.year,
        semester: event.semester,
        subject: event.subject,
        grade: event.grade,
        day: event.day,
        period: event.period,
        isMyself: event.isMyself,
        isIntensive: event.isIntensive,
        teacher: event.teacher,
      ),
    );

    yield failureOrResult.fold(
      (failure) => GradeSearchState.failed(error: failure),
      (result) => GradeSearchState.loaded(
        grades: result.grades,
        isLastPage: result.isLastPage,
        isLoading: false,
        page: 0,
      ),
    );
  }

  Stream<GradeSearchState> _mapFetchPageEvent(FetchPage event) async* {
    yield* state.maybeMap(
      loaded: (state) async* {
        yield state.copyWith(isLoading: true);
        final failureOrResult = await _fetchGradeSearchPageUsecase(fgspu.Params(page: event.page));

        yield* failureOrResult.fold(
          (failure) async* {
            yield GradeSearchState.failed(error: failure);
          },
          (result) async* {
            yield GradeSearchState.loaded(
              grades: state.grades + result.grades,
              isLastPage: result.isLastPage,
              isLoading: false,
              page: event.page,
            );
          },
        );
      },
      orElse: () async* {},
    );
  }
}
