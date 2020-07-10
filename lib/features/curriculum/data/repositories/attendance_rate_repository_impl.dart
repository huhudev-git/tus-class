import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/attendance_rate.dart';
import '../../domain/repositories/attendance_rate_repository.dart';
import '../datasources/attendance_rate_data_source.dart';

@Injectable(as: AttendanceRateRepository)
class AttendanceRateRepositoryImpl implements AttendanceRateRepository {
  final AttendanceRateDataSource dataSource;

  AttendanceRateRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, List<AttendanceRate>>> fetchAttendanceRate() async {
    try {
      final result = await dataSource.fetchAttendanceRate();
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
