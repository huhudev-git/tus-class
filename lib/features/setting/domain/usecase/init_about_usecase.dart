import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/about.dart';
import '../repositories/about_repository.dart';

@injectable
class InitAboutUsecase implements UseCase<About, NoParams> {
  final AboutRepository repository;

  InitAboutUsecase(this.repository);

  @override
  Future<Either<Failure, About>> call(NoParams params) async {
    return repository.init();
  }
}
