import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/i18n_repository.dart';

@injectable
class GetI18nUsecase implements UseCase<Locale, NoParams> {
  final I18nRepository repository;

  GetI18nUsecase(this.repository);

  @override
  Future<Either<Failure, Locale>> call(NoParams params) async {
    return repository.getLanguage();
  }
}
