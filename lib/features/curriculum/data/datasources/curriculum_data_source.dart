import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sembast/sembast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/tus_client/pages/all_curriculum_page.dart';
import '../../../../core/tus_client/pages/curriculum_page.dart';
import '../../../../core/tus_client/pages/curriculum_switch_page.dart';
import '../../../../core/tus_client/pages/index_page.dart';
import '../../../../core/tus_client/pages/no_page_id_syllabus_detail_page.dart';
import '../../../../core/tus_client/repositories/tus_repository.dart';
import '../models/curriculum_detail_model.dart';
import '../models/curriculum_setting_model.dart';
import '../models/show_mode_model.dart';
import '../models/timetable_model.dart';

const String curriculumShowMode = 'CURRICULUM_SHOW_MODE';
const String curriculumCache = 'CURRICULUM_CACHE';
const String curriculumCacheAll = 'CURRICULUM_CACHE_ALL';
const String curriculumCacheDetail = 'CURRICULUM_CACHE_Details';

abstract class CurriculumDataSource {
  Future<void> backToIndex();
  Future<void> saveShowMode(ShowModeModel mode);
  Future<ShowModeModel> getShowMode();
  //
  Future<void> saveCurriculumSetting(CurriculumSettingModel setting);
  Future<CurriculumSettingModel> getCurriculumSetting(String code, String course);
  Future<List<CurriculumSettingModel>> getAllCurriculumSetting();
  Future<void> deleteCurriculumSetting(CurriculumSettingModel setting);
  //
  Future<void> cacheCurriculumDetail(CurriculumDetailModel details);
  Future<CurriculumDetailModel> getCurriculumDetail(String code);
  Future<CurriculumDetailModel> fetchCurriculumDetail(int year, String code);
  //
  Future<void> cacheAllCurriculum(TimeTableModel timeTable);
  Future<TimeTableModel> getAllCurriculum();
  Future<TimeTableModel> fetchAllCurriculum();
  Future<void> deleteCurriculumDetail();
  //
  Future<void> cacheCurriculum(TimeTableModel timeTable);
  Future<TimeTableModel> getCurriculum(int year, String semesterValue);
  Future<TimeTableModel> fetchCurriculum(int year, String semesterValue);
}

@LazySingleton(as: CurriculumDataSource)
class CurriculumDataSourceImpl implements CurriculumDataSource {
  final SharedPreferences sharedPreferences;
  final TUSRepository tusRepository;
  final Database db;

  StoreRef<int, Map<String, dynamic>> get curriculumStore => intMapStoreFactory.store('curriculum');
  StoreRef<int, Map<String, dynamic>> get allCurriculumStore => intMapStoreFactory.store('all_curriculum');
  StoreRef<int, Map<String, dynamic>> get curriculumDetailStore => intMapStoreFactory.store('curriculum_detail');
  StoreRef<int, Map<String, dynamic>> get curriculumSettingStore => intMapStoreFactory.store('curriculum_setting');

  CurriculumDataSourceImpl({
    @required this.sharedPreferences,
    @required this.tusRepository,
    @Named('curriculum_db') @required this.db,
  });

  @override
  Future<void> saveShowMode(ShowModeModel mode) async {
    await sharedPreferences.setString(curriculumShowMode, json.encode(mode));
  }

  @override
  Future<ShowModeModel> getShowMode() async {
    final modeModel = sharedPreferences.getString(curriculumShowMode);
    if (modeModel != null) {
      return ShowModeModel.fromJson(json.decode(modeModel) as Map<String, dynamic>);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<TimeTableModel> fetchCurriculum(int year, String semesterValue) async {
    if (year == null) {
      final page = CurriculumPage();
      final r = await tusRepository.request(page);

      try {
        final result = page.resolveCurriculum(r.data.toString(), true);
        return TimeTableModel.fromJson(result);
      } on NoSuchMethodError {
        throw TUSFetchDataException();
      }
    } else {
      final page = CurriculumSwitchPage(year: year, semester: semesterValue);
      final r = await tusRepository.request(page);

      try {
        final result = page.resolveCurriculum(r.data.toString(), false);
        return TimeTableModel.fromJson(result);
      } on NoSuchMethodError {
        throw TUSFetchDataException();
      }
    }
  }

  @override
  Future<TimeTableModel> fetchAllCurriculum() async {
    final page = AllCurriculumPage();
    final r = await tusRepository.request(page);

    try {
      final result = page.resolveCurriculum(r.data.toString());
      return TimeTableModel.fromJson(result);
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<CurriculumDetailModel> fetchCurriculumDetail(int year, String code) async {
    final page = NoPageIdSyllabusDetailPage(year: year, code: code);
    final r = await tusRepository.request(page);

    try {
      final curriculumDetail = page.resolveSyllabusSearchDetail(r.data.toString(), year);
      if (curriculumDetail == null) {
        throw TUSNoSyllabusException();
      }
      return CurriculumDetailModel.fromJson(curriculumDetail);
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<void> cacheCurriculum(TimeTableModel timeTable) async {
    final finder = Finder(
      filter: Filter.and([
        Filter.equals('semester', timeTable.semester),
        Filter.equals('year', timeTable.year),
      ]),
    );

    // delete before
    await curriculumStore.delete(db, finder: finder);

    // prevent current timetable change
    if (timeTable.isCurrent) {
      await curriculumStore.delete(db, finder: Finder(filter: Filter.equals('isCurrent', true)));
    }

    // cache current
    await curriculumStore.add(db, timeTable.toJson());
  }

  @override
  Future<void> cacheAllCurriculum(TimeTableModel timeTable) async {
    final finder = Finder(
      filter: Filter.and([
        Filter.equals('semester', timeTable.semester),
        Filter.equals('year', timeTable.year),
      ]),
    );

    // delete before
    await allCurriculumStore.delete(db, finder: finder);
    // cache current
    await allCurriculumStore.add(db, timeTable.toJson());
  }

  @override
  Future<void> cacheCurriculumDetail(CurriculumDetailModel detail) async {
    // delete before
    final finder = Finder(filter: Filter.equals('code', detail.code));
    await curriculumDetailStore.delete(db, finder: finder);

    await curriculumDetailStore.add(db, detail.toJson());
  }

  @override
  Future<TimeTableModel> getCurriculum(int year, String semesterValue) async {
    Finder finder;
    if (year == null) {
      finder = Finder(
        filter: Filter.and([
          Filter.equals('isCurrent', true),
        ]),
      );
    } else {
      finder = Finder(
        filter: Filter.and([
          Filter.equals('year', year),
          Filter.equals('semesterValue', semesterValue),
        ]),
      );
    }

    final timeTable = await curriculumStore.findFirst(db, finder: finder);
    if (timeTable != null) {
      return TimeTableModel.fromJson(timeTable.value);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<TimeTableModel> getAllCurriculum() async {
    final finder = Finder(
      filter: Filter.and([
        Filter.equals('isCurrent', true),
      ]),
    );

    final timeTable = await allCurriculumStore.findFirst(db, finder: finder);
    if (timeTable != null) {
      return TimeTableModel.fromJson(timeTable.value);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<CurriculumDetailModel> getCurriculumDetail(String code) async {
    final finder = Finder(filter: Filter.equals('code', code));
    final detail = await curriculumDetailStore.findFirst(db, finder: finder);
    if (detail != null) {
      return CurriculumDetailModel.fromJson(detail.value);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> deleteCurriculumDetail() async {
    await curriculumDetailStore.delete(db);
  }

  @override
  Future<void> saveCurriculumSetting(CurriculumSettingModel setting) async {
    Filter filter;
    if (setting.code != null && setting.code.isNotEmpty) {
      filter = Filter.equals('code', setting.code);
    } else {
      filter = Filter.equals('course', setting.course);
    }

    await curriculumSettingStore.delete(db, finder: Finder(filter: filter));
    await curriculumSettingStore.add(db, setting.toJson());
  }

  @override
  Future<CurriculumSettingModel> getCurriculumSetting(String code, String course) async {
    final finder = Finder(
      filter: Filter.or([
        Filter.equals('code', code ?? 'please set code in html tus'),
        Filter.equals('course', course),
      ]),
    );

    final setting = await curriculumSettingStore.findFirst(db, finder: finder);
    if (setting != null) {
      return CurriculumSettingModel.fromJson(setting.value);
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<CurriculumSettingModel>> getAllCurriculumSetting() async {
    final settings = await curriculumSettingStore.find(db);
    if (settings != null) {
      return settings.map((e) => CurriculumSettingModel.fromJson(e.value)).toList();
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> deleteCurriculumSetting(CurriculumSettingModel setting) async {
    final finder = Finder(
      filter: Filter.or([
        Filter.equals('code', setting.code),
        Filter.equals('course', setting.course),
      ]),
    );
    await curriculumSettingStore.delete(db, finder: finder);
  }

  @override
  Future<void> backToIndex() async {
    final page = IndexPage();
    await tusRepository.request(page);
  }
}
