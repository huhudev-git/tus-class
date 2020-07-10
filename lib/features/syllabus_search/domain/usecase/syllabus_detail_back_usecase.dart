import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/syllabus_search_repository.dart';

@injectable
class SyllabusDetailBackUsecase implements UseCase<Unit, Params> {
  final SyllabusSearchRepository repository;

  SyllabusDetailBackUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.syllabusDetailBack(year: params.year, code: params.code);
  }
}

class Params extends Equatable {
  final int year;
  final String code;

  const Params({
    @required this.year,
    @required this.code,
  });

  @override
  List<Object> get props => [year, code];
}
