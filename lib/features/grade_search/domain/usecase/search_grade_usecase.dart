import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/fetch_grade_result.dart';
import '../repositories/grade_search_repository.dart';

@injectable
class SearchGradeUsecase implements UseCase<FetchGradeResult, Params> {
  final GradeSearchRepository repository;

  SearchGradeUsecase(this.repository);

  @override
  Future<Either<Failure, FetchGradeResult>> call(Params params) async {
    return repository.search(
      key: params.key,
      year: params.year,
      semester: params.semester,
      subject: params.subject,
      grade: params.grade,
      day: params.day,
      period: params.period,
      isMyself: params.isMyself,
      isIntensive: params.isIntensive,
      teacher: params.teacher,
    );
  }
}

class Params extends Equatable {
  final String key;
  final String year;
  final String semester;
  final String subject;
  final String grade;
  final String day;
  final String period;
  final bool isMyself;
  final bool isIntensive;
  final bool teacher;

  const Params({
    @required this.key,
    @required this.year,
    @required this.semester,
    @required this.subject,
    @required this.grade,
    @required this.day,
    @required this.period,
    @required this.isMyself,
    @required this.isIntensive,
    @required this.teacher,
  });

  @override
  List<Object> get props => [
        key,
        year,
        semester,
        subject,
        grade,
        day,
        period,
        isMyself,
        isIntensive,
        teacher,
      ];
}
