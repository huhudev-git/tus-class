import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/grade_filter.dart';
import '../repositories/grade_search_repository.dart';

@injectable
class FetchGradeSearchFilterUsecase implements UseCase<GradeFilter, NoParams> {
  final GradeSearchRepository repository;

  FetchGradeSearchFilterUsecase(this.repository);

  @override
  Future<Either<Failure, GradeFilter>> call(NoParams params) async {
    return repository.fetchGradeFilter();
  }
}
