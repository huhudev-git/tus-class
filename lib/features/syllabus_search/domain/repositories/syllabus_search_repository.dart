import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/fetch_syllabus_result.dart';
import '../entities/syllabus_detail.dart';
import '../entities/syllabus_filter.dart';

abstract class SyllabusSearchRepository {
  Future<Either<Failure, SyllabusFilter>> fetchFilter();
  Future<Either<Failure, FetchSyllabusResult>> search({String key, String year, String semester, String category, String subject, String grade, String day, String period, bool isIntensive, bool teacher});
  Future<Either<Failure, FetchSyllabusResult>> fetchPage({int page});
  Future<Either<Failure, SyllabusDetail>> fetchSyllabusDetail({int index, int page, int year});
  Future<Either<Failure, Unit>> syllabusDetailBack({int year, String code});
}
