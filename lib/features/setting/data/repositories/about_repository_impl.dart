import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/about.dart';
import '../../domain/repositories/about_repository.dart';
import '../datasources/about_data_source.dart';

@Injectable(as: AboutRepository)
class AboutRepositoryImpl implements AboutRepository {
  final AboutDataSource dataSource;

  AboutRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, About>> init() async {
    try {
      final result = await dataSource.init();
      return Right(result.toDomain());
    } on Exception {
      return Left(CacheFailure());
    }
  }
}
