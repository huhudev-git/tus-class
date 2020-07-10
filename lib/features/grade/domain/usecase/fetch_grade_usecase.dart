import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/grade.dart';
import '../repositories/grade_repository.dart';

@injectable
class FetchGradeUsecase implements UseCase<List<Grade>, NoParams> {
  final GradeRepository repository;

  FetchGradeUsecase(this.repository);

  @override
  Future<Either<Failure, List<Grade>>> call(NoParams params) async {
    return repository.fetchGrade();
  }
}
