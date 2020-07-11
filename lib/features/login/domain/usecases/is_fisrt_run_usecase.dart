import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tus_class/features/login/domain/repositories/login_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

@injectable
class IsFirstRunUsecase implements UseCase<bool, NoParams> {
  final LoginRepository repository;

  IsFirstRunUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return repository.isFirstRun();
  }
}
