import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/grade.dart';

abstract class GradeRepository {
  Future<Either<Failure, List<Grade>>> fetchGrade();
}
