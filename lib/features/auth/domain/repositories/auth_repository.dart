import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/auth_token.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthToken>> getToken();
  Future<Either<Failure, bool>> hasToken();
  Future<Either<Failure, Unit>> persistToken(String username, String password);
  Future<Either<Failure, Unit>> deleteToken();
}
