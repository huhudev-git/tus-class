import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/grade_detail.dart';
import '../../domain/usecase/fetch_grade_detail_usecase.dart';

part 'grade_search_detail_bloc.freezed.dart';
part 'grade_search_detail_event.dart';
part 'grade_search_detail_state.dart';

@injectable
class GradeSearchDetailBloc extends Bloc<GradeSearchDetailEvent, GradeSearchDetailState> {
  final FetchGradeDetailUsecase _fetchGradeDetailUsecase;

  GradeSearchDetailBloc({
    @required FetchGradeDetailUsecase fetchGradeDetailUsecase,
  })  : assert(fetchGradeDetailUsecase != null),
        _fetchGradeDetailUsecase = fetchGradeDetailUsecase;

  @override
  GradeSearchDetailState get initialState => GradeSearchDetailState.initial();

  @override
  Stream<GradeSearchDetailState> mapEventToState(
    GradeSearchDetailEvent event,
  ) async* {
    yield* _mapfetchGradeSearchDetailEvent(event as FetchGradeSearchDetail);
  }

  Stream<GradeSearchDetailState> _mapfetchGradeSearchDetailEvent(FetchGradeSearchDetail event) async* {
    yield const GradeSearchDetailState.loading();
    final failureOrDetail = await _fetchGradeDetailUsecase(
      Params(
        year: event.year,
        code: event.code,
        page: event.page,
        index: event.index,
      ),
    );

    yield failureOrDetail.fold(
      (failure) => GradeSearchDetailState.failed(error: failure),
      (detail) => GradeSearchDetailState.loaded(detail: detail),
    );
  }
}
