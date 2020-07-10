import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/teacher.dart';
import '../../domain/repositories/teacher_repository.dart';
import '../datasources/teacher_data_source.dart';

@Injectable(as: TeacherRepository)
class TeacherRepositoryImpl implements TeacherRepository {
  final TeacherDataSource dataSource;

  TeacherRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, Teacher>> fetchTeacher({String teacherId, String code, int year}) async {
    try {
      final result = await dataSource.fetchTeacher(teacherId, code, year);
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
