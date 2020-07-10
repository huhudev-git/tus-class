import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/attendance_rate.dart';
import '../repositories/attendance_rate_repository.dart';

@injectable
class FetchAttendanceRateUsecase implements UseCase<List<AttendanceRate>, NoParams> {
  final AttendanceRateRepository repository;

  FetchAttendanceRateUsecase(this.repository);

  @override
  Future<Either<Failure, List<AttendanceRate>>> call(NoParams params) async {
    return repository.fetchAttendanceRate();
  }
}
