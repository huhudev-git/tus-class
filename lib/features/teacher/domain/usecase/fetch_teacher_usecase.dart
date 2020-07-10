import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/teacher.dart';
import '../repositories/teacher_repository.dart';

@injectable
class FetchTeacherUsecase implements UseCase<Teacher, Params> {
  final TeacherRepository repository;

  FetchTeacherUsecase(this.repository);

  @override
  Future<Either<Failure, Teacher>> call(Params params) async {
    return repository.fetchTeacher(
      teacherId: params.teacherId,
      code: params.code,
      year: params.year,
    );
  }
}

class Params extends Equatable {
  final String teacherId;
  final String code;
  final int year;

  const Params({
    @required this.teacherId,
    @required this.code,
    @required this.year,
  });

  @override
  List<Object> get props => [teacherId, code, year];
}
