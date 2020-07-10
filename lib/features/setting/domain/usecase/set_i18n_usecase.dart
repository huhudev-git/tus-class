import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/i18n_repository.dart';

@injectable
class SetI18nUsecase implements UseCase<Unit, Params> {
  final I18nRepository repository;

  SetI18nUsecase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.setLanguage(
      languageCode: params.locale.languageCode,
      scriptCode: params.locale.scriptCode,
      countryCode: params.locale.countryCode,
    );
  }
}

class Params extends Equatable {
  final Locale locale;

  const Params({
    @required this.locale,
  });

  @override
  List<Object> get props => [locale];
}
