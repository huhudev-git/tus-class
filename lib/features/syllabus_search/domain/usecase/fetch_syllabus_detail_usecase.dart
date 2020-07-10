import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/syllabus_detail.dart';
import '../repositories/syllabus_search_repository.dart';

@injectable
class FetchSyllabusDetailUsecase implements UseCase<SyllabusDetail, Params> {
  final SyllabusSearchRepository repository;

  FetchSyllabusDetailUsecase(this.repository);

  @override
  Future<Either<Failure, SyllabusDetail>> call(Params params) async {
    return repository.fetchSyllabusDetail(
      page: params.page,
      index: params.index,
      year: params.year,
    );
  }
}

class Params extends Equatable {
  final int page;
  final int index;
  final int year;

  const Params({
    @required this.page,
    @required this.index,
    @required this.year,
  });

  @override
  List<Object> get props => [page, index, year];
}
