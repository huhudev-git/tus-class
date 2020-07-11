import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/syllabus_filter.dart';
import '../../domain/usecase/fetch_syllabus_search_filter_usecase.dart';

part 'syllabus_search_filter_bloc.freezed.dart';
part 'syllabus_search_filter_event.dart';
part 'syllabus_search_filter_state.dart';

@injectable
class SyllabusSearchFilterBloc extends Bloc<SyllabusSearchFilterEvent, SyllabusSearchFilterState> {
  final FetchSyllabusSearchFilterUsecase _fetchSyllabusSearchFilterUsecase;

  SyllabusSearchFilterBloc({
    @required FetchSyllabusSearchFilterUsecase fetchSyllabusSearchFilterUsecase,
  })  : assert(fetchSyllabusSearchFilterUsecase != null),
        _fetchSyllabusSearchFilterUsecase = fetchSyllabusSearchFilterUsecase,
        super(SyllabusSearchFilterState.initial());

  @override
  Stream<SyllabusSearchFilterState> mapEventToState(
    SyllabusSearchFilterEvent event,
  ) async* {
    yield* _mapFetchFilterEvent(event as FetchFilter);
  }

  Stream<SyllabusSearchFilterState> _mapFetchFilterEvent(FetchFilter event) async* {
    yield const SyllabusSearchFilterState.loading();
    final failureOrFilter = await _fetchSyllabusSearchFilterUsecase(NoParams());
    yield failureOrFilter.fold(
      (failure) => SyllabusSearchFilterState.failed(error: failure),
      (filter) => SyllabusSearchFilterState.loaded(filter: filter),
    );
  }
}
