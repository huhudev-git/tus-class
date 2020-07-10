import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/setting.dart';
import '../repositories/setting_repository.dart';

@injectable
class InitSettingUsecase implements UseCase<Setting, NoParams> {
  final SettingRepository repository;

  InitSettingUsecase(this.repository);

  @override
  Future<Either<Failure, Setting>> call(NoParams params) async {
    return repository.init();
  }
}
