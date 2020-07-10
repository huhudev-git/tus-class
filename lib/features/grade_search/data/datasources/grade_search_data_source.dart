import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/tus_client/pages/grade_search_detail_per_page.dart';
import '../../../../core/tus_client/pages/grade_search_list_page.dart';
import '../../../../core/tus_client/pages/grade_search_list_page_page.dart';
import '../../../../core/tus_client/pages/grade_search_page.dart';
import '../../../../core/tus_client/pages/no_page_id_syllabus_detail_page.dart';
import '../../../../core/tus_client/repositories/tus_repository.dart';
import '../models/fetch_grade_result_model.dart';
import '../models/grade_detail_model.dart';
import '../models/grade_filter_model.dart';

abstract class GradeSearchDataSource {
  Future<GradeFilterModel> fetchGradeFilter();
  Future<FetchGradeResultModel> search(String key, String year, String semester, String subject, String grade, String day, String period, bool isMyself, bool isIntensive, bool teacher);
  Future<FetchGradeResultModel> fetchPage(int page);
  Future<GradeDetailModel> fetchGradeDetail(int year, String code, int page, int index);
}

@LazySingleton(as: GradeSearchDataSource)
class GradeSearchDataSourceImpl implements GradeSearchDataSource {
  final TUSRepository tusRepository;

  GradeSearchDataSourceImpl({@required this.tusRepository});

  @override
  Future<GradeFilterModel> fetchGradeFilter() async {
    final page = GradeSearchPage();
    final r = await tusRepository.request(page);

    try {
      final result = page.resolveGradeSearchFilter(r.data.toString());
      return GradeFilterModel.fromJson(result);
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<FetchGradeResultModel> fetchPage(int page) async {
    final p = GradeSearchListPagePage(page: page);
    final r = await tusRepository.request(p);

    try {
      final grades = p.resolveGradeSearchList(r.data.toString());
      final lastPage = p.resolveLastPage(r.data.toString());
      return FetchGradeResultModel.fromJson({
        'isLastPage': lastPage - 1 <= page,
        'grades': grades,
      });
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<FetchGradeResultModel> search(String key, String year, String semester, String subject, String grade, String day, String period, bool isMyself, bool isIntensive, bool teacher) async {
    final page = GradeSearchListPage(
      key: key,
      year: year,
      semester: semester,
      subject: subject,
      grade: grade,
      day: day,
      period: period,
      isMyself: isMyself,
      isIntensive: isIntensive,
      teacher: teacher,
    );
    final r = await tusRepository.request(page);

    try {
      final grades = page.resolveGradeSearchList(r.data.toString());
      final lastPage = page.resolveLastPage(r.data.toString());
      return FetchGradeResultModel.fromJson({
        'isLastPage': lastPage <= 1,
        'grades': grades,
      });
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<GradeDetailModel> fetchGradeDetail(int year, String code, int page, int index) async {
    final p = NoPageIdSyllabusDetailPage(year: year, code: code);
    final p2 = GradeSearchDetailPerPage(page: page, index: index);
    final r = await tusRepository.requests([p2, p]);

    try {
      final result = p.resolveSyllabusSearchDetail(r.data.toString(), year);
      return GradeDetailModel.fromJson(result);
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }
}
