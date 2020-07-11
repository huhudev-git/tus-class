import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/login_result.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginResult>> login(String username, String password);
  Future<Either<Failure, bool>> isFirstRun();
}
