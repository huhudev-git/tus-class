import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/grade.dart';
import '../../domain/repositories/grade_repository.dart';
import '../datasources/grade_data_source.dart';

@Injectable(as: GradeRepository)
class GradeRepositoryImpl implements GradeRepository {
  final GradeDataSource dataSource;

  GradeRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, List<Grade>>> fetchGrade() async {
    try {
      final result = await dataSource.fetchGrade();
      return Right(result.map((e) => e.toDomain()).toList());
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
