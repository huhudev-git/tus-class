import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/repositories/version_repository.dart';
import '../datasources/version_data_source.dart';

@Injectable(as: VersionRepository)
class VersionRepositoryImpl implements VersionRepository {
  final VersionDataSource dataSource;

  VersionRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, bool>> hasUpdate() async {
    try {
      final result = await dataSource.hasUpdate();
      return Right(result);
    } on Exception {
      return Left(NetworkFailure());
    }
  }
}
