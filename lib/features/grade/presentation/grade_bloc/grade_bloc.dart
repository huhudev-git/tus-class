import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/grade.dart';
import '../../domain/usecase/fetch_grade_usecase.dart';

part 'grade_bloc.freezed.dart';
part 'grade_event.dart';
part 'grade_state.dart';

@injectable
class GradeBloc extends Bloc<GradeEvent, GradeState> {
  final FetchGradeUsecase _fetchGradeUsecase;

  GradeBloc({
    @required FetchGradeUsecase fetchGradeUsecase,
  })  : assert(fetchGradeUsecase != null),
        _fetchGradeUsecase = fetchGradeUsecase;

  @override
  GradeState get initialState => const GradeState.initial();

  @override
  Stream<GradeState> mapEventToState(
    GradeEvent event,
  ) async* {
    yield* _mapFetchGradeEvent(event as FetchGrade);
  }

  Stream<GradeState> _mapFetchGradeEvent(FetchGrade event) async* {
    yield const GradeState.loading();
    final failureOrGrades = await _fetchGradeUsecase(NoParams());
    yield failureOrGrades.fold(
      (failure) => GradeState.failed(error: failure),
      (grades) => GradeState.loaded(grades: grades),
    );
  }
}
