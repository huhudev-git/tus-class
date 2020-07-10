import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:tus_class/features/curriculum/domain/entities/curriculum_detail.dart';
import 'package:tus_class/features/curriculum/domain/repositories/curriculum_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

@injectable
class FetchCurriculumDetailUsecase implements UseCase<CurriculumDetail, Params> {
  final CurriculumRepository repository;

  FetchCurriculumDetailUsecase(this.repository);

  @override
  Future<Either<Failure, CurriculumDetail>> call(Params params) async {
    return repository.fetchCurriculumDetail(
      code: params.code,
      year: params.year,
    );
  }
}

class Params extends Equatable {
  final String code;
  final int year;

  const Params({
    @required this.code,
    @required this.year,
  });

  @override
  List<Object> get props => [code, year];
}
