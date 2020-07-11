import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/grade_filter.dart';
import '../../domain/usecase/fetch_grade_search_filter_usecase.dart';

part 'grade_search_filter_bloc.freezed.dart';
part 'grade_search_filter_event.dart';
part 'grade_search_filter_state.dart';

@injectable
class GradeSearchFilterBloc extends Bloc<GradeSearchFilterEvent, GradeSearchFilterState> {
  final FetchGradeSearchFilterUsecase _fetchGradeSearchFilterUsecase;

  GradeSearchFilterBloc({
    @required FetchGradeSearchFilterUsecase fetchGradeSearchFilterUsecase,
  })  : assert(fetchGradeSearchFilterUsecase != null),
        _fetchGradeSearchFilterUsecase = fetchGradeSearchFilterUsecase,
        super(const GradeSearchFilterState.initial());

  @override
  Stream<GradeSearchFilterState> mapEventToState(
    GradeSearchFilterEvent event,
  ) async* {
    yield* _mapFetchGradeSearchFilterEvent(event as FetchGradeSearchFilter);
  }

  Stream<GradeSearchFilterState> _mapFetchGradeSearchFilterEvent(FetchGradeSearchFilter event) async* {
    final failureOrFilter = await _fetchGradeSearchFilterUsecase(NoParams());
    yield failureOrFilter.fold(
      (failure) => GradeSearchFilterState.failed(error: failure),
      (filter) => GradeSearchFilterState.loaded(filter: filter),
    );
  }
}
