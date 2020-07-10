import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/grade_detail.dart';
import '../repositories/grade_search_repository.dart';

@injectable
class FetchGradeDetailUsecase implements UseCase<GradeDetail, Params> {
  final GradeSearchRepository repository;

  FetchGradeDetailUsecase(this.repository);

  @override
  Future<Either<Failure, GradeDetail>> call(Params params) async {
    return repository.fetchGradeDetail(
      code: params.code,
      year: params.year,
      page: params.page,
      index: params.index,
    );
  }
}

class Params extends Equatable {
  final String code;
  final int year;
  final int page;
  final int index;

  const Params({
    @required this.code,
    @required this.year,
    @required this.page,
    @required this.index,
  });

  @override
  List<Object> get props => [code, year, page, index];
}
