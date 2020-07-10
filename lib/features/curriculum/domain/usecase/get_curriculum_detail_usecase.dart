import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/curriculum_detail.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class GetCurriculumDetailUsecase implements UseCase<CurriculumDetail, Params> {
  final CurriculumRepository repository;

  GetCurriculumDetailUsecase(this.repository);

  @override
  Future<Either<Failure, CurriculumDetail>> call(Params params) async {
    return repository.getCurriculumDetail(code: params.code);
  }
}

class Params extends Equatable {
  final String code;

  const Params({
    @required this.code,
  });

  @override
  List<Object> get props => [code];
}
