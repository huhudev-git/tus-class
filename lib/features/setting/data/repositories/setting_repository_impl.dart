import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/setting.dart';
import '../../domain/repositories/setting_repository.dart';
import '../datasources/setting_data_source.dart';

@Injectable(as: SettingRepository)
class SettingRepositoryImpl implements SettingRepository {
  final SettingDataSource dataSource;

  SettingRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, Setting>> init() async {
    try {
      final result = await dataSource.init();
      return Right(result.toDomain());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteAutoLogin() async {
    try {
      await dataSource.deleteAutoLogin();
      return Right(unit);
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> setAutoLoginState({bool status}) async {
    try {
      await dataSource.setAutoLogin(status: status);
      return Right(unit);
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> setAuthToken({String username, String password}) async {
    try {
      await dataSource.setAuthToken(username, password);
      return Right(unit);
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCacheFiles() async {
    try {
      await dataSource.deleteCacheFiles();
      return Right(unit);
    } on Exception {
      return Left(CacheFailure());
    }
  }
}
