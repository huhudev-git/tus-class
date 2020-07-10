import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/fetch_grade_result.dart';
import '../repositories/grade_search_repository.dart';

@injectable
class FetchGradeSearchPageUsecase implements UseCase<FetchGradeResult, Params> {
  final GradeSearchRepository repository;

  FetchGradeSearchPageUsecase(this.repository);

  @override
  Future<Either<Failure, FetchGradeResult>> call(Params params) async {
    return repository.fetchPage(page: params.page);
  }
}

class Params extends Equatable {
  final int page;

  const Params({
    @required this.page,
  });

  @override
  List<Object> get props => [page];
}
