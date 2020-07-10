import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/show_mode.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class SaveShowModeUsecase implements UseCase<Unit, Params> {
  final CurriculumRepository repository;

  SaveShowModeUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.saveShowMode(mode: params.mode);
  }
}

class Params extends Equatable {
  final ShowMode mode;

  const Params({
    @required this.mode,
  });

  @override
  List<Object> get props => [mode];
}
