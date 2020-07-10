import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/errors/failures.dart';

abstract class I18nRepository {
  Future<Either<Failure, Locale>> getLanguage();
  Future<Either<Failure, Unit>> setLanguage({String languageCode, String scriptCode, String countryCode});
}
