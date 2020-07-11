import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/login_result.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/login_data_source.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource dataSource;

  LoginRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, LoginResult>> login(
    String username,
    String password,
  ) async {
    try {
      final loginResult = await dataSource.login(username, password);
      if (loginResult.isAuth) {
        return Right(loginResult.toDomain());
      } else {
        return Left(InvalidPasswordFailure());
      }
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on ServerException {
      return Left(ServerFailure());
    } on DioError catch (e) {
      final hour = DateTime.now().hour;

      if (hour >= 2 && hour < 4) {
        // Android
        if (e.type == DioErrorType.CONNECT_TIMEOUT) {
          return Left(ServerMaintenanceFailure());
          // IOS
        } else if (e.type == DioErrorType.DEFAULT) {
          return Left(ServerMaintenanceFailure());
        }
      }

      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> isFirstRun() async {
    try {
      final result = await dataSource.isFirstRun();
      return Right(result);
    } on Exception {
      return Left(CacheFailure());
    }
  }
}
