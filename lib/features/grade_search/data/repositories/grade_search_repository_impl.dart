import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/fetch_grade_result.dart';
import '../../domain/entities/grade_detail.dart';
import '../../domain/entities/grade_filter.dart';
import '../../domain/repositories/grade_search_repository.dart';
import '../datasources/grade_search_data_source.dart';

@Injectable(as: GradeSearchRepository)
class GradeSearchRepositoryImpl implements GradeSearchRepository {
  final GradeSearchDataSource dataSource;

  GradeSearchRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, GradeFilter>> fetchGradeFilter() async {
    try {
      final result = await dataSource.fetchGradeFilter();
      return Right(result.toDomain());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, FetchGradeResult>> search({String key, String year, String semester, String subject, String grade, String day, String period, bool isMyself, bool isIntensive, bool teacher}) async {
    try {
      final result = await dataSource.search(key, year, semester, subject, grade, day, period, isMyself, isIntensive, teacher);
      return Right(result.toDomain());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on TooManyResultFailure {
      return Left(ServerFailure());
    } on NoneResultException {
      return Left(NoneResultFailure());
    } on TUSUnexceptedException {
      return Left(TUSUnexceptedFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, FetchGradeResult>> fetchPage({int page}) async {
    try {
      final result = await dataSource.fetchPage(page);
      return Right(result.toDomain());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, GradeDetail>> fetchGradeDetail({int year, String code, int page, int index}) async {
    try {
      final result = await dataSource.fetchGradeDetail(year, code, page, index);
      return Right(result.toDomain());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }
}
