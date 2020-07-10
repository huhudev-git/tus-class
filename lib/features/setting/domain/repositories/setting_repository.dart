import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/setting.dart';

abstract class SettingRepository {
  Future<Either<Failure, Setting>> init();
  Future<Either<Failure, Unit>> deleteAutoLogin();
  Future<Either<Failure, Unit>> setAutoLoginState({bool status});
  Future<Either<Failure, Unit>> setAuthToken({String username, String password});
  Future<Either<Failure, Unit>> deleteCacheFiles();
}
