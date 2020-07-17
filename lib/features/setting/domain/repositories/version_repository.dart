import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class VersionRepository {
  Future<Either<Failure, bool>> hasUpdate();
}
