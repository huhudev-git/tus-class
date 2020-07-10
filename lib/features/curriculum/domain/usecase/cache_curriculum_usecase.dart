import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/timetable.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class CacheCurriculumUsecase implements UseCase<Unit, Params> {
  final CurriculumRepository repository;

  CacheCurriculumUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.cacheCurriculum(
      timeTable: params.timeTable,
    );
  }
}

class Params extends Equatable {
  final TimeTable timeTable;

  const Params({
    @required this.timeTable,
  });

  @override
  List<Object> get props => [timeTable];
}
