import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/teacher.dart';
import '../../domain/usecase/fetch_teacher_usecase.dart';

part 'teacher_bloc.freezed.dart';
part 'teacher_event.dart';
part 'teacher_state.dart';

@injectable
class TeacherBloc extends Bloc<TeacherEvent, TeacherState> {
  final FetchTeacherUsecase _fetchTeacherUsecase;

  TeacherBloc({@required FetchTeacherUsecase fetchTeacherUsecase})
      : assert(fetchTeacherUsecase != null),
        _fetchTeacherUsecase = fetchTeacherUsecase,
        super(TeacherState.initial());

  @override
  Stream<TeacherState> mapEventToState(
    TeacherEvent event,
  ) async* {
    yield* _mapFetchTeacherEvent(event as FetchTeacher);
  }

  Stream<TeacherState> _mapFetchTeacherEvent(FetchTeacher event) async* {
    yield const TeacherState.loading();
    final failureOrResult = await _fetchTeacherUsecase(Params(
      code: event.code,
      year: event.year,
      teacherId: event.teacherId,
    ));

    yield failureOrResult.fold(
      (failure) => TeacherState.failed(error: failure),
      (teacher) => TeacherState.loaded(teacher: teacher),
    );
  }
}
