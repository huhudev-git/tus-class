import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/repositories/i18n_repository.dart';
import '../datasources/i18n_data_source.dart';

@Injectable(as: I18nRepository)
class I18nRepositoryImpl implements I18nRepository {
  final I18nDataSource dataSource;

  I18nRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, Locale>> getLanguage() async {
    try {
      final result = await dataSource.getLanguage();
      return Right(result);
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> setLanguage({String languageCode, String scriptCode, String countryCode}) async {
    try {
      await dataSource.setLanguage(languageCode, scriptCode, countryCode);
      return Right(unit);
    } on Exception {
      return Left(CacheFailure());
    }
  }
}
