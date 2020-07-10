import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/fetch_syllabus_result.dart';
import '../repositories/syllabus_search_repository.dart';

@injectable
class SearchSyllabusUsecase implements UseCase<FetchSyllabusResult, Params> {
  final SyllabusSearchRepository repository;

  SearchSyllabusUsecase(this.repository);

  @override
  Future<Either<Failure, FetchSyllabusResult>> call(Params params) async {
    return repository.search(
      key: params.key,
      year: params.year,
      semester: params.semester,
      category: params.category,
      subject: params.subject,
      grade: params.grade,
      day: params.day,
      period: params.period,
      isIntensive: params.isIntensive,
      teacher: params.teacher,
    );
  }
}

class Params extends Equatable {
  final String key;
  final String year;
  final String semester;
  final String category;
  final String subject;
  final String grade;
  final String day;
  final String period;
  final bool isIntensive;
  final bool teacher;

  const Params({
    @required this.key,
    @required this.year,
    @required this.semester,
    @required this.category,
    @required this.subject,
    @required this.grade,
    @required this.day,
    @required this.period,
    @required this.isIntensive,
    @required this.teacher,
  });

  @override
  List<Object> get props => [
        key,
        year,
        semester,
        category,
        subject,
        grade,
        day,
        period,
        isIntensive,
        teacher,
      ];
}
