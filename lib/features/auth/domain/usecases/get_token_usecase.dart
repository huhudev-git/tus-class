import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/auth_token.dart';
import '../repositories/auth_repository.dart';

@injectable
class GetTokenUsecase implements UseCase<AuthToken, NoParams> {
  final AuthRepository repository;

  GetTokenUsecase(this.repository);

  @override
  Future<Either<Failure, AuthToken>> call(NoParams params) async {
    return repository.getToken();
  }
}
