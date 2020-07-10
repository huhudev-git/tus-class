import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/about.dart';

abstract class AboutRepository {
  Future<Either<Failure, About>> init();
}
