import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/tus_client/pages/attendance_rate_page.dart';
import '../../../../core/tus_client/repositories/tus_repository.dart';
import '../models/attendance_rate_model.dart';

const String curriculumShowMode = 'CURRICULUM_SHOW_MODE';
const String curriculumCache = 'CURRICULUM_CACHE';
const String curriculumCacheAll = 'CURRICULUM_CACHE_ALL';
const String curriculumCacheDetail = 'CURRICULUM_CACHE_Details';

abstract class AttendanceRateDataSource {
  Future<List<AttendanceRateModel>> fetchAttendanceRate();
}

@LazySingleton(as: AttendanceRateDataSource)
class AttendanceRateDataSourceImpl implements AttendanceRateDataSource {
  final TUSRepository tusRepository;

  AttendanceRateDataSourceImpl({
    @required this.tusRepository,
  });

  @override
  Future<List<AttendanceRateModel>> fetchAttendanceRate() async {
    final page = AttendanceRatePage();
    final r = await tusRepository.request(page);

    try {
      final result = page.resolveAttendanceRate(r.data.toString());
      return result.map((c) => AttendanceRateModel.fromJson(c)).toList();
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }
}
