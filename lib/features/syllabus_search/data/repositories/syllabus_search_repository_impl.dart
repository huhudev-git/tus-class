import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/fetch_syllabus_result.dart';
import '../../domain/entities/syllabus_detail.dart';
import '../../domain/entities/syllabus_filter.dart';
import '../../domain/repositories/syllabus_search_repository.dart';
import '../datasources/syllabus_search_data_source.dart';

@Injectable(as: SyllabusSearchRepository)
class SyllabusSearchRepositoryImpl implements SyllabusSearchRepository {
  final SyllabusSearchDataSource dataSource;

  SyllabusSearchRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, SyllabusFilter>> fetchFilter() async {
    try {
      final result = await dataSource.fetchFilter();
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
  Future<Either<Failure, FetchSyllabusResult>> search({String key, String year, String semester, String category, String subject, String grade, String day, String period, bool isIntensive, bool teacher}) async {
    try {
      final result = await dataSource.search(key, year, semester, category, subject, grade, day, period, isIntensive, teacher);
      return Right(result.toDomain());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TooManyResultFailure {
      return Left(ServerFailure());
    } on NoneResultException {
      return Left(NoneResultFailure());
    } on TUSUnexceptedException {
      return Left(TUSUnexceptedFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, FetchSyllabusResult>> fetchPage({int page}) async {
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
  Future<Either<Failure, SyllabusDetail>> fetchSyllabusDetail({int index, int page, int year}) async {
    try {
      final result = await dataSource.fetchSyllabusDetail(index, page, year);
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
  Future<Either<Failure, Unit>> syllabusDetailBack({int year, String code}) async {
    try {
      await dataSource.syllabusDetailBack(year, code);
      return Right(unit);
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }
}
