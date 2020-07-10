import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/tus_client/pages/syllabus_search_detail_back_page.dart';
import '../../../../core/tus_client/pages/syllabus_search_detail_page.dart';
import '../../../../core/tus_client/pages/syllabus_search_detail_per_page.dart';
import '../../../../core/tus_client/pages/syllabus_search_list_page.dart';
import '../../../../core/tus_client/pages/syllabus_search_list_page_page.dart';
import '../../../../core/tus_client/pages/syllabus_search_page.dart';
import '../../../../core/tus_client/repositories/tus_repository.dart';
import '../models/fetch_syllabus_result_model.dart';
import '../models/syllabus_detail_model.dart';
import '../models/syllabus_filter_model.dart';

abstract class SyllabusSearchDataSource {
  Future<SyllabusFilterModel> fetchFilter();
  Future<FetchSyllabusResultModel> search(String key, String year, String semester, String category, String subject, String grade, String day, String period, bool isIntensive, bool teacher);
  Future<FetchSyllabusResultModel> fetchPage(int page);
  Future<SyllabusDetailModel> fetchSyllabusDetail(int index, int page, int year);
  Future<void> syllabusDetailBack(int year, String code);
}

@LazySingleton(as: SyllabusSearchDataSource)
class SyllabusSearchDataSourceImpl implements SyllabusSearchDataSource {
  final TUSRepository tusRepository;

  SyllabusSearchDataSourceImpl({@required this.tusRepository});

  @override
  Future<FetchSyllabusResultModel> fetchPage(int page) async {
    final p = SyllabusSearchListPagePage(page: page);
    final r = await tusRepository.request(p);

    try {
      final syllabusList = p.resolveSyllabusSearchList(r.data.toString(), page: page);
      final lastPage = p.resolveLastPage(r.data.toString());

      return FetchSyllabusResultModel.fromJson({
        'isLastPage': lastPage - 1 <= page,
        'syllabusList': syllabusList,
      });
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<SyllabusFilterModel> fetchFilter() async {
    final page = SyllabusSearchPage();
    final r = await tusRepository.request(page);

    try {
      final result = page.resolveSyllabusSearchFilter(r.data.toString());
      return SyllabusFilterModel.fromJson(result);
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<FetchSyllabusResultModel> search(String key, String year, String semester, String category, String subject, String grade, String day, String period, bool isIntensive, bool teacher) async {
    final page = SyllabusSearchListPage(
      key: key,
      year: year,
      semester: semester,
      category: category,
      subject: subject,
      grade: grade,
      day: day,
      period: period,
      isIntensive: isIntensive,
      teacher: teacher,
    );
    final r = await tusRepository.request(page);

    try {
      final syllabusList = page.resolveSyllabusSearchList(r.data.toString());
      final lastPage = page.resolveLastPage(r.data.toString());
      return FetchSyllabusResultModel.fromJson({
        'isLastPage': lastPage <= 1,
        'syllabusList': syllabusList,
      });
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<SyllabusDetailModel> fetchSyllabusDetail(int index, int page, int year) async {
    final p = SyllabusSearchDetailPage(page: page, index: index);
    final p2 = SyllabusSearchDetailPerPage(page: page, index: index);
    final r = await tusRepository.requests([p2, p]);

    try {
      final result = p.resolveSyllabusSearchDetail(r.data.toString(), year);
      return SyllabusDetailModel.fromJson(result);
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<void> syllabusDetailBack(int year, String code) async {
    final p = SyllabusSearchDetailBackPage(year: year, code: code);
    await tusRepository.request(p);
  }
}
