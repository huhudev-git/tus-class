import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/curriculum_detail.dart';
import '../../domain/entities/curriculum_setting.dart';
import '../../domain/entities/show_mode.dart';
import '../../domain/entities/timetable.dart';
import '../../domain/repositories/curriculum_repository.dart';
import '../datasources/curriculum_data_source.dart';
import '../models/curriculum_detail_model.dart';
import '../models/curriculum_setting_model.dart';
import '../models/show_mode_model.dart';
import '../models/timetable_model.dart';

@Injectable(as: CurriculumRepository)
class CurriculumRepositoryImpl implements CurriculumRepository {
  final CurriculumDataSource dataSource;

  CurriculumRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, Unit>> saveShowMode({ShowMode mode}) async {
    try {
      final modeModel = ShowModeModel.fromDomain(mode);
      await dataSource.saveShowMode(modeModel);
      return Right(unit);
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, ShowMode>> getShowMode() async {
    try {
      final result = await dataSource.getShowMode();
      return Right(result.toDomain());
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, TimeTable>> fetchCurriculum({int year, String semesterValue}) async {
    try {
      final result = await dataSource.fetchCurriculum(year, semesterValue);
      return Right(result.toDomain());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, TimeTable>> fetchAllCurriculum() async {
    try {
      final result = await dataSource.fetchAllCurriculum();
      return Right(result.toDomain());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CurriculumDetail>> fetchCurriculumDetail({int year, String code}) async {
    try {
      final result = await dataSource.fetchCurriculumDetail(year, code);
      return Right(result.toDomain());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSNoSyllabusException {
      return Left(TUSNoSyllabusFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> cacheCurriculum({TimeTable timeTable}) async {
    try {
      await dataSource.cacheCurriculum(TimeTableModel.fromDomain(timeTable));
      return Right(unit);
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> cacheAllCurriculum({TimeTable timeTable}) async {
    try {
      await dataSource.cacheAllCurriculum(TimeTableModel.fromDomain(timeTable));
      return Right(unit);
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> cacheCurriculumDetail({CurriculumDetail details}) async {
    try {
      await dataSource.cacheCurriculumDetail(CurriculumDetailModel.fromDomain(details));
      return Right(unit);
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, TimeTable>> getCurriculum({int year, String semesterValue}) async {
    try {
      final result = await dataSource.getCurriculum(year, semesterValue);
      return Right(result.toDomain());
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, TimeTable>> getAllCurriculum() async {
    try {
      final result = await dataSource.getAllCurriculum();
      return Right(result.toDomain());
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, CurriculumDetail>> getCurriculumDetail({String code}) async {
    try {
      final result = await dataSource.getCurriculumDetail(code);
      return Right(result.toDomain());
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCurriculumDetail() async {
    try {
      await dataSource.deleteCurriculumDetail();
      return Right(unit);
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> saveCurriculumSetting({CurriculumSetting setting}) async {
    try {
      await dataSource.saveCurriculumSetting(CurriculumSettingModel.fromDomain(setting));
      return Right(unit);
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, CurriculumSetting>> getCurriculumSetting({String code, String course}) async {
    try {
      final setting = await dataSource.getCurriculumSetting(code, course);
      return Right(setting.toDomain());
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<CurriculumSetting>>> getAllCurriculumSetting() async {
    try {
      final settings = await dataSource.getAllCurriculumSetting();
      return Right(settings.map((e) => e.toDomain()).toList());
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCurriculumSetting({CurriculumSetting setting}) async {
    try {
      await dataSource.deleteCurriculumSetting(CurriculumSettingModel.fromDomain(setting));
      return Right(unit);
    } on CacheException {
      return Left(CacheFailure());
    } on Exception {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> backToIndex() async {
    try {
      await dataSource.backToIndex();
      return Right(unit);
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }
}
