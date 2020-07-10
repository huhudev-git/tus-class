import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/fetch_syllabus_result.dart';
import '../repositories/syllabus_search_repository.dart';

@injectable
class FetchSyllabusUsecase implements UseCase<FetchSyllabusResult, Params> {
  final SyllabusSearchRepository repository;

  FetchSyllabusUsecase(this.repository);
  @override
  Future<Either<Failure, FetchSyllabusResult>> call(Params params) async {
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
