import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/version_repository.dart';

@injectable
class VersionCheckUsecase implements UseCase<bool, NoParams> {
  final VersionRepository repository;

  VersionCheckUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return repository.hasUpdate();
  }
}
