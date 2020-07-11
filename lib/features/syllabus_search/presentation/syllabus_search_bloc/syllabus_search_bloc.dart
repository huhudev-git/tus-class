import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/syllabus.dart';
import '../../domain/usecase/fetch_page_usecase.dart' as fpu;
import '../../domain/usecase/search_syllabus_usecase.dart' as ssu;

part 'syllabus_search_bloc.freezed.dart';
part 'syllabus_search_event.dart';
part 'syllabus_search_state.dart';

@injectable
class SyllabusSearchBloc extends Bloc<SyllabusSearchEvent, SyllabusSearchState> {
  final ssu.SearchSyllabusUsecase _searchSyllabusUsecase;
  final fpu.FetchSyllabusUsecase _fetchSyllabusUsecase;

  SyllabusSearchBloc({
    @required ssu.SearchSyllabusUsecase searchSyllabusUsecase,
    @required fpu.FetchSyllabusUsecase fetchSyllabusUsecase,
  })  : assert(searchSyllabusUsecase != null),
        assert(fetchSyllabusUsecase != null),
        _searchSyllabusUsecase = searchSyllabusUsecase,
        _fetchSyllabusUsecase = fetchSyllabusUsecase,
        super(SyllabusSearchState.initial());

  @override
  Stream<SyllabusSearchState> mapEventToState(
    SyllabusSearchEvent event,
  ) async* {
    yield* event.map(
      init: _mapInitEvent,
      search: _mapSearchEvent,
      fetchPage: _mapFetchPageEvent,
    );
  }

  Stream<SyllabusSearchState> _mapInitEvent(Init event) async* {
    yield SyllabusSearchState.initial();
  }

  Stream<SyllabusSearchState> _mapSearchEvent(Search event) async* {
    yield SyllabusSearchState.loading();

    final failureOrResult = await _searchSyllabusUsecase(
      ssu.Params(
        key: event.key,
        year: event.year,
        semester: event.semester,
        category: event.category,
        subject: event.subject,
        grade: event.grade,
        day: event.day,
        period: event.period,
        isIntensive: event.isIntensive,
        teacher: event.teacher,
      ),
    );

    yield failureOrResult.fold(
      (failure) => SyllabusSearchState.failed(error: failure),
      (result) => SyllabusSearchState.loaded(
        syllabusList: result.syllabusList,
        isLastPage: result.isLastPage,
        isLoading: false,
        page: 0,
      ),
    );
  }

  Stream<SyllabusSearchState> _mapFetchPageEvent(FetchPage event) async* {
    yield* state.maybeMap(
      loaded: (state) async* {
        yield state.copyWith(isLoading: true);
        final failureOrResult = await _fetchSyllabusUsecase(fpu.Params(page: event.page));

        yield* failureOrResult.fold(
          (failure) async* {
            yield SyllabusSearchState.failed(error: failure);
          },
          (result) async* {
            yield SyllabusSearchState.loaded(
              syllabusList: state.syllabusList + result.syllabusList,
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
