import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/curriculum_detail.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class CacheCurriculumDetailUsecase implements UseCase<Unit, Params> {
  final CurriculumRepository repository;

  CacheCurriculumDetailUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.cacheCurriculumDetail(
      details: params.detail,
    );
  }
}

class Params extends Equatable {
  final CurriculumDetail detail;

  const Params({
    @required this.detail,
  });

  @override
  List<Object> get props => [detail];
}
