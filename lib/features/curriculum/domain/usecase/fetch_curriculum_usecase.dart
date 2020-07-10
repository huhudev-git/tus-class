import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/timetable.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class FetchCurriculumUsecase implements UseCase<TimeTable, Params> {
  final CurriculumRepository repository;

  FetchCurriculumUsecase(this.repository);

  @override
  Future<Either<Failure, TimeTable>> call(Params params) async {
    return repository.fetchCurriculum(
      year: params.year,
      semesterValue: params.semesterValue,
    );
  }
}

class Params extends Equatable {
  final int year;
  final String semesterValue;

  const Params({
    @required this.year,
    @required this.semesterValue,
  });

  @override
  List<Object> get props => [year, semesterValue];
}
