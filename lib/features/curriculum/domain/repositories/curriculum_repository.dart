import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/curriculum_detail.dart';
import '../entities/curriculum_setting.dart';
import '../entities/show_mode.dart';
import '../entities/timetable.dart';

abstract class CurriculumRepository {
  Future<Either<Failure, Unit>> backToIndex();
  Future<Either<Failure, Unit>> saveShowMode({ShowMode mode});
  Future<Either<Failure, ShowMode>> getShowMode();
  //
  Future<Either<Failure, Unit>> saveCurriculumSetting({CurriculumSetting setting});
  Future<Either<Failure, CurriculumSetting>> getCurriculumSetting({String code, String course});
  Future<Either<Failure, List<CurriculumSetting>>> getAllCurriculumSetting();
  Future<Either<Failure, Unit>> deleteCurriculumSetting({CurriculumSetting setting});
  //
  Future<Either<Failure, Unit>> cacheCurriculumDetail({CurriculumDetail details});
  Future<Either<Failure, Unit>> deleteCurriculumDetail();
  Future<Either<Failure, CurriculumDetail>> getCurriculumDetail({String code});
  Future<Either<Failure, CurriculumDetail>> fetchCurriculumDetail({int year, String code});
  //
  Future<Either<Failure, Unit>> cacheAllCurriculum({TimeTable timeTable});
  Future<Either<Failure, TimeTable>> getAllCurriculum();
  Future<Either<Failure, TimeTable>> fetchAllCurriculum();
  //
  Future<Either<Failure, Unit>> cacheCurriculum({TimeTable timeTable});
  Future<Either<Failure, TimeTable>> getCurriculum({int year, String semesterValue});
  Future<Either<Failure, TimeTable>> fetchCurriculum({int year, String semesterValue});
}
