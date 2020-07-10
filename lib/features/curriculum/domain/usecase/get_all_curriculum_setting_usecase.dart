import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/curriculum_setting.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class GetAllCurriculumSettingUsecase implements UseCase<List<CurriculumSetting>, NoParams> {
  final CurriculumRepository repository;

  GetAllCurriculumSettingUsecase(this.repository);

  @override
  Future<Either<Failure, List<CurriculumSetting>>> call(NoParams params) async {
    return repository.getAllCurriculumSetting();
  }
}
