import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

@injectable
class PersistTokenUsecase implements UseCase<void, Params> {
  final AuthRepository repository;

  PersistTokenUsecase(this.repository);
  @override
  Future<Either<Failure, void>> call(Params params) async {
    return repository.persistToken(
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
