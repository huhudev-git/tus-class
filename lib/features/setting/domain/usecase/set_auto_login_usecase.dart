import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/setting_repository.dart';

@injectable
class SetAutoLoginUsecase implements UseCase<Unit, Params> {
  final SettingRepository repository;

  SetAutoLoginUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.setAutoLoginState(status: params.status);
  }
}

class Params extends Equatable {
  final bool status;

  const Params({
    @required this.status,
  });

  @override
  List<Object> get props => [status];
}
