import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/attendance_rate.dart';
import '../../domain/usecase/fetch_attendance_rate_usecase.dart' as faru;

part 'attendance_rate_bloc.freezed.dart';
part 'attendance_rate_event.dart';
part 'attendance_rate_state.dart';

@injectable
class AttendanceRateBloc extends Bloc<AttendanceRateEvent, AttendanceRateState> {
  final faru.FetchAttendanceRateUsecase _fetchAttendanceRateUsecase;

  AttendanceRateBloc({
    @required faru.FetchAttendanceRateUsecase fetchAttendanceRateUsecase,
  })  : assert(fetchAttendanceRateUsecase != null),
        _fetchAttendanceRateUsecase = fetchAttendanceRateUsecase,
        super(AttendanceRateState.initial());

  @override
  Stream<AttendanceRateState> mapEventToState(
    AttendanceRateEvent event,
  ) async* {
    yield* _mapFetchAttendanceRateEvent(event as FetchAttendanceRate);
  }

  Stream<AttendanceRateState> _mapFetchAttendanceRateEvent(FetchAttendanceRate event) async* {
    yield const AttendanceRateState.loading();

    final failureOrRates = await _fetchAttendanceRateUsecase(NoParams());
    yield* failureOrRates.fold(
      (failure) async* {
        yield AttendanceRateState.failed(error: failure);
      },
      (rates) async* {
        yield AttendanceRateState.loaded(rates: rates);
      },
    );
  }
}
