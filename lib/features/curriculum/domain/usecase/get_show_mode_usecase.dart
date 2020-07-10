import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/show_mode.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class GetShowModeUsecase implements UseCase<ShowMode, NoParams> {
  final CurriculumRepository repository;

  GetShowModeUsecase(this.repository);

  @override
  Future<Either<Failure, ShowMode>> call(NoParams params) async {
    return repository.getShowMode();
  }
}
