import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/setting_repository.dart';

@injectable
class SetAuthTokenUsecase implements UseCase<Unit, Params> {
  final SettingRepository repository;

  SetAuthTokenUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.setAuthToken(username: params.username, password: params.password);
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
