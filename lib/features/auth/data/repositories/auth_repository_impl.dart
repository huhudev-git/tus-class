import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/auth_token.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_data_source.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, Unit>> deleteToken() async {
    try {
      await dataSource.deleteToken();
      return Right(unit);
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, AuthToken>> getToken() async {
    try {
      final isAutoLogin = await dataSource.isAutoLogin();

      if (isAutoLogin) {
        final result = await dataSource.getToken();
        return Right(result.toDomain());
      } else {
        return Left(AutoLoginNotAllowFailure());
      }
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> hasToken() async {
    try {
      final result = await dataSource.hasToken();
      return Right(result);
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> persistToken(String username, String password) async {
    try {
      await dataSource.persistToken(username, password);
      return Right(unit);
    } on Exception {
      return Left(CacheFailure());
    }
  }
}
