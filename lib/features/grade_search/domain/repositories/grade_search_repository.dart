import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/fetch_grade_result.dart';
import '../entities/grade_detail.dart';
import '../entities/grade_filter.dart';

abstract class GradeSearchRepository {
  Future<Either<Failure, GradeFilter>> fetchGradeFilter();
  Future<Either<Failure, FetchGradeResult>> search({String key, String year, String semester, String subject, String grade, String day, String period, bool isMyself, bool isIntensive, bool teacher});
  Future<Either<Failure, FetchGradeResult>> fetchPage({int page});
  Future<Either<Failure, GradeDetail>> fetchGradeDetail({int year, String code, int page, int index});
}
