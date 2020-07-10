import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/curriculum_setting.dart';
import '../repositories/curriculum_repository.dart';

@injectable
class GetCurriculumSettingUsecase implements UseCase<CurriculumSetting, Params> {
  final CurriculumRepository repository;

  GetCurriculumSettingUsecase(this.repository);

  @override
  Future<Either<Failure, CurriculumSetting>> call(Params params) async {
    return repository.getCurriculumSetting(code: params.code, course: params.course);
  }
}

class Params extends Equatable {
  final String code;
  final String course;

  const Params({
    @required this.code,
    @required this.course,
  });

  @override
  List<Object> get props => [code, course];
}
