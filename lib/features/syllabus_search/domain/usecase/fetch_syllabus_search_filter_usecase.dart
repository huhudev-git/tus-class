import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/syllabus_filter.dart';
import '../repositories/syllabus_search_repository.dart';

@injectable
class FetchSyllabusSearchFilterUsecase implements UseCase<SyllabusFilter, NoParams> {
  final SyllabusSearchRepository repository;

  FetchSyllabusSearchFilterUsecase(this.repository);
  
  @override
  Future<Either<Failure, SyllabusFilter>> call(NoParams params) async {
    return repository.fetchFilter();
  }
}
