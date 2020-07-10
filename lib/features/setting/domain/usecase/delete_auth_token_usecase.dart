import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/setting_repository.dart';

@injectable
class DeleteAuthTokenUsecase implements UseCase<Unit, NoParams> {
  final SettingRepository repository;

  DeleteAuthTokenUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(NoParams params) async {
    return repository.deleteAutoLogin();
  }
}
