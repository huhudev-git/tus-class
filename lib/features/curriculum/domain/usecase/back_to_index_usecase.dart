import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class BackToIndexUsecase implements UseCase<Unit, NoParams> {
  final CurriculumRepository repository;

  BackToIndexUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(NoParams params) async {
    return repository.backToIndex();
  }
}
