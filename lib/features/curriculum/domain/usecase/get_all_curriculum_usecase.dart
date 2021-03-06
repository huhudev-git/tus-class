import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/timetable.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class GetAllCurriculumUsecase implements UseCase<TimeTable, NoParams> {
  final CurriculumRepository repository;

  GetAllCurriculumUsecase(this.repository);

  @override
  Future<Either<Failure, TimeTable>> call(NoParams params) async {
    return repository.getAllCurriculum();
  }
}
