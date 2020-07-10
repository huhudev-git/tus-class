import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

@injectable
class DeleteTokenUsecase implements UseCase<void, NoParams> {
  final AuthRepository repository;

  DeleteTokenUsecase(this.repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return repository.deleteToken();
  }
}
