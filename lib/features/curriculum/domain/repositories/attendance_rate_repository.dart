import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/attendance_rate.dart';

abstract class AttendanceRateRepository {
  Future<Either<Failure, List<AttendanceRate>>> fetchAttendanceRate();
}
