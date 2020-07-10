import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/login_result.dart';
import '../repositories/login_repository.dart';

@injectable
class LoginUsecase implements UseCase<LoginResult, Params> {
  final LoginRepository repository;

  LoginUsecase(this.repository);

  @override
  Future<Either<Failure, LoginResult>> call(Params params) async {
    return repository.login(
      params.username,
      params.password,
    );
  }
}

class Params extends Equatable {
  final String username;
  final String password;

  const Params({
    @required this.username,
    @required this.password,
  });

  @override
  List<Object> get props => [username, password];
}
