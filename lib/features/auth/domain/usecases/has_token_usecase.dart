import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

@injectable
class HasTokenUsecase implements UseCase<bool, NoParams> {
  final AuthRepository repository;

  HasTokenUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return repository.hasToken();
  }
}
