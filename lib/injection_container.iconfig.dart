// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:sembast/sembast.dart';
import 'package:tus_class/core/register_module.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tus_class/core/tus_client/data_source/tus_client.dart';
import 'package:tus_class/core/tus_client/repositories/tus_repository_impl.dart';
import 'package:tus_class/core/tus_client/repositories/tus_repository.dart';
import 'package:tus_class/features/teacher/data/datasources/teacher_data_source.dart';
import 'package:tus_class/features/teacher/data/repositories/teacher_repository_impl.dart';
import 'package:tus_class/features/teacher/domain/repositories/teacher_repository.dart';
import 'package:tus_class/features/setting/data/datasources/about_data_source.dart';
import 'package:tus_class/features/setting/data/repositories/about_repository_impl.dart';
import 'package:tus_class/features/setting/domain/repositories/about_repository.dart';
import 'package:tus_class/features/curriculum/data/datasources/attendance_rate_data_source.dart';
import 'package:tus_class/features/curriculum/data/repositories/attendance_rate_repository_impl.dart';
import 'package:tus_class/features/curriculum/domain/repositories/attendance_rate_repository.dart';
import 'package:tus_class/features/auth/data/datasources/auth_data_source.dart';
import 'package:tus_class/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:tus_class/features/auth/domain/repositories/auth_repository.dart';
import 'package:tus_class/features/curriculum/data/datasources/curriculum_data_source.dart';
import 'package:tus_class/features/curriculum/data/repositories/curriculum_repository_impl.dart';
import 'package:tus_class/features/curriculum/domain/repositories/curriculum_repository.dart';
import 'package:tus_class/features/curriculum/domain/usecase/delete_curriculum_detail_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/delete_curriculum_setting_usecase.dart';
import 'package:tus_class/features/auth/domain/usecases/delete_token_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/fetch_all_curriculum_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/fetch_attendance_rate_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/fetch_curriculum_detail_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/fetch_curriculum_usecase.dart';
import 'package:tus_class/features/teacher/domain/usecase/fetch_teacher_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/get_all_curriculum_setting_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/get_all_curriculum_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/get_curriculum_detail_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/get_curriculum_setting_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/get_curriculum_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/get_show_mode_usecase.dart';
import 'package:tus_class/features/auth/domain/usecases/get_token_usecase.dart';
import 'package:tus_class/features/grade/data/datasources/grade_data_source.dart';
import 'package:tus_class/features/grade/data/repositories/grade_repository_impl.dart';
import 'package:tus_class/features/grade/domain/repositories/grade_repository.dart';
import 'package:tus_class/features/grade_search/data/datasources/grade_search_data_source.dart';
import 'package:tus_class/features/grade_search/data/repositories/grade_search_repository_impl.dart';
import 'package:tus_class/features/grade_search/domain/repositories/grade_search_repository.dart';
import 'package:tus_class/features/auth/domain/usecases/has_token_usecase.dart';
import 'package:tus_class/features/setting/data/datasources/i18n_data_source.dart';
import 'package:tus_class/features/setting/data/repositories/i18n_repository_impl.dart';
import 'package:tus_class/features/setting/domain/repositories/i18n_repository.dart';
import 'package:tus_class/features/setting/domain/usecase/init_about_usecase.dart';
import 'package:tus_class/features/login/data/datasources/login_data_source.dart';
import 'package:tus_class/features/login/data/repositories/login_repository_impl.dart';
import 'package:tus_class/features/login/domain/repositories/login_repository.dart';
import 'package:tus_class/features/login/domain/usecases/login_usecase.dart';
import 'package:tus_class/features/message/data/datasources/message_data_source.dart';
import 'package:tus_class/features/message/data/repositories/message_repository_impl.dart';
import 'package:tus_class/features/message/domain/repositories/message_repository.dart';
import 'package:tus_class/features/auth/domain/usecases/persist_token_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/save_curriculum_setting_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/save_show_mode_usecase.dart';
import 'package:tus_class/features/grade_search/domain/usecase/search_grade_usecase.dart';
import 'package:tus_class/features/setting/domain/usecase/set_i18n_usecase.dart';
import 'package:tus_class/features/setting/data/datasources/setting_data_source.dart';
import 'package:tus_class/features/setting/data/repositories/setting_repository_impl.dart';
import 'package:tus_class/features/setting/domain/repositories/setting_repository.dart';
import 'package:tus_class/features/syllabus_search/data/datasources/syllabus_search_data_source.dart';
import 'package:tus_class/features/syllabus_search/data/repositories/syllabus_search_repository_impl.dart';
import 'package:tus_class/features/syllabus_search/domain/repositories/syllabus_search_repository.dart';
import 'package:tus_class/features/teacher/presentation/teacher_bloc/teacher_bloc.dart';
import 'package:tus_class/features/setting/presentation/about_bloc/about_bloc.dart';
import 'package:tus_class/features/curriculum/presentation/attendance_rate_bloc/attendance_rate_bloc.dart';
import 'package:tus_class/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:tus_class/features/curriculum/domain/usecase/back_to_index_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/cache_all_curriculum_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/cache_curriculum_detail_usecase.dart';
import 'package:tus_class/features/curriculum/domain/usecase/cache_curriculum_usecase.dart';
import 'package:tus_class/features/curriculum/presentation/curriculum_bloc/curriculum_bloc.dart';
import 'package:tus_class/features/curriculum/presentation/curriculum_detail_bloc/curriculum_detail_bloc.dart';
import 'package:tus_class/features/curriculum/presentation/curriculum_setting_bloc/curriculum_setting_bloc.dart';
import 'package:tus_class/features/curriculum/presentation/curriculum_show_mode_bloc/curriculum_show_mode_bloc.dart';
import 'package:tus_class/features/setting/domain/usecase/delete_auth_token_usecase.dart';
import 'package:tus_class/features/setting/domain/usecase/delete_cache_files_usecase.dart';
import 'package:tus_class/features/message/domain/usecases/fetch_category_usecase.dart';
import 'package:tus_class/features/grade_search/domain/usecase/fetch_grade_detail_usecase.dart';
import 'package:tus_class/features/grade_search/domain/usecase/fetch_grade_search_filter_usecase.dart';
import 'package:tus_class/features/grade_search/domain/usecase/fetch_grade_search_page_usecase.dart';
import 'package:tus_class/features/grade/domain/usecase/fetch_grade_usecase.dart';
import 'package:tus_class/features/message/domain/usecases/fetch_message_usecase.dart';
import 'package:tus_class/features/message/domain/usecases/fetch_page_usecase.dart';
import 'package:tus_class/features/syllabus_search/domain/usecase/fetch_syllabus_detail_usecase.dart';
import 'package:tus_class/features/syllabus_search/domain/usecase/fetch_syllabus_search_filter_usecase.dart';
import 'package:tus_class/features/syllabus_search/domain/usecase/fetch_page_usecase.dart';
import 'package:tus_class/features/setting/domain/usecase/get_i18n_usecase.dart';
import 'package:tus_class/features/grade/presentation/grade_bloc/grade_bloc.dart';
import 'package:tus_class/features/grade_search/presentation/grade_search_bloc/grade_search_bloc.dart';
import 'package:tus_class/features/grade_search/presentation/grade_search_detail_bloc/grade_search_detail_bloc.dart';
import 'package:tus_class/features/grade_search/presentation/grade_search_filter_bloc/grade_search_filter_bloc.dart';
import 'package:tus_class/features/setting/presentation/i18n_bloc/i18n_bloc.dart';
import 'package:tus_class/features/setting/domain/usecase/init_setting_usecase.dart';
import 'package:tus_class/features/login/domain/usecases/is_fisrt_run_usecase.dart';
import 'package:tus_class/features/login/presentation/bloc/login_bloc.dart';
import 'package:tus_class/features/message/presentation/message_bloc/message_bloc.dart';
import 'package:tus_class/features/message/presentation/message_detail_bloc/message_detail_bloc.dart';
import 'package:tus_class/features/message/domain/usecases/message_entry_switched_usecase.dart';
import 'package:tus_class/features/syllabus_search/domain/usecase/search_syllabus_usecase.dart';
import 'package:tus_class/features/setting/domain/usecase/set_auth_token_usecase.dart';
import 'package:tus_class/features/setting/domain/usecase/set_auto_login_usecase.dart';
import 'package:tus_class/features/setting/presentation/setting_bloc/setting_bloc.dart';
import 'package:tus_class/features/syllabus_search/domain/usecase/syllabus_detail_back_usecase.dart';
import 'package:tus_class/features/syllabus_search/presentation/syllabus_search_bloc/syllabus_search_bloc.dart';
import 'package:tus_class/features/syllabus_search/presentation/syllabus_search_detail_bloc/syllabus_search_detail_bloc.dart';
import 'package:tus_class/features/syllabus_search/presentation/syllabus_search_filter_bloc/syllabus_search_filter_bloc.dart';
import 'package:tus_class/features/curriculum/presentation/all_curriculum_bloc/all_curriculum_bloc.dart';
import 'package:tus_class/features/message/presentation/category_bloc/category_bloc.dart';
import 'package:tus_class/features/message/presentation/message_entry_bloc/message_entry_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  final database = await registerModule.db();
  g.registerLazySingleton<Database>(() => database,
      instanceName: 'curriculum_db');
  g.registerFactory<Dio>(() => registerModule.dio);
  g.registerLazySingleton<FlutterSecureStorage>(
      () => registerModule.futterSecureStorage);
  final packageInfo = await registerModule.packageInfo;
  g.registerLazySingleton<PackageInfo>(() => packageInfo);
  final sharedPreferences = await registerModule.prefs;
  g.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<TUSClient>(() => TUSClient(dio: g<Dio>()));
  g.registerFactory<TUSRepository>(
      () => TUSRepositoryImpl(tusClient: g<TUSClient>()));
  g.registerLazySingleton<TeacherDataSource>(
      () => TeacherDataSourceImpl(tusRepository: g<TUSRepository>()));
  g.registerFactory<TeacherRepository>(
      () => TeacherRepositoryImpl(dataSource: g<TeacherDataSource>()));
  g.registerLazySingleton<AboutDataSource>(
      () => AboutDataSourceImpl(packageInfo: g<PackageInfo>()));
  g.registerFactory<AboutRepository>(
      () => AboutRepositoryImpl(dataSource: g<AboutDataSource>()));
  g.registerLazySingleton<AttendanceRateDataSource>(
      () => AttendanceRateDataSourceImpl(tusRepository: g<TUSRepository>()));
  g.registerFactory<AttendanceRateRepository>(() =>
      AttendanceRateRepositoryImpl(dataSource: g<AttendanceRateDataSource>()));
  g.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(
      sharedPreferences: g<SharedPreferences>(),
      secureStorage: g<FlutterSecureStorage>()));
  g.registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(dataSource: g<AuthDataSource>()));
  g.registerLazySingleton<CurriculumDataSource>(() => CurriculumDataSourceImpl(
        sharedPreferences: g<SharedPreferences>(),
        tusRepository: g<TUSRepository>(),
        db: g<Database>(instanceName: 'curriculum_db'),
      ));
  g.registerFactory<CurriculumRepository>(
      () => CurriculumRepositoryImpl(dataSource: g<CurriculumDataSource>()));
  g.registerFactory<DeleteCurriculumDetailUsecase>(
      () => DeleteCurriculumDetailUsecase(g<CurriculumRepository>()));
  g.registerFactory<DeleteCurriculumSettingUsecase>(
      () => DeleteCurriculumSettingUsecase(g<CurriculumRepository>()));
  g.registerFactory<DeleteTokenUsecase>(
      () => DeleteTokenUsecase(g<AuthRepository>()));
  g.registerFactory<FetchAllCurriculumUsecase>(
      () => FetchAllCurriculumUsecase(g<CurriculumRepository>()));
  g.registerFactory<FetchAttendanceRateUsecase>(
      () => FetchAttendanceRateUsecase(g<AttendanceRateRepository>()));
  g.registerFactory<FetchCurriculumDetailUsecase>(
      () => FetchCurriculumDetailUsecase(g<CurriculumRepository>()));
  g.registerFactory<FetchCurriculumUsecase>(
      () => FetchCurriculumUsecase(g<CurriculumRepository>()));
  g.registerFactory<FetchTeacherUsecase>(
      () => FetchTeacherUsecase(g<TeacherRepository>()));
  g.registerFactory<GetAllCurriculumSettingUsecase>(
      () => GetAllCurriculumSettingUsecase(g<CurriculumRepository>()));
  g.registerFactory<GetAllCurriculumUsecase>(
      () => GetAllCurriculumUsecase(g<CurriculumRepository>()));
  g.registerFactory<GetCurriculumDetailUsecase>(
      () => GetCurriculumDetailUsecase(g<CurriculumRepository>()));
  g.registerFactory<GetCurriculumSettingUsecase>(
      () => GetCurriculumSettingUsecase(g<CurriculumRepository>()));
  g.registerFactory<GetCurriculumUsecase>(
      () => GetCurriculumUsecase(g<CurriculumRepository>()));
  g.registerFactory<GetShowModeUsecase>(
      () => GetShowModeUsecase(g<CurriculumRepository>()));
  g.registerFactory<GetTokenUsecase>(
      () => GetTokenUsecase(g<AuthRepository>()));
  g.registerLazySingleton<GradeDataSource>(
      () => GradeDataSourceImpl(tusRepository: g<TUSRepository>()));
  g.registerFactory<GradeRepository>(
      () => GradeRepositoryImpl(dataSource: g<GradeDataSource>()));
  g.registerLazySingleton<GradeSearchDataSource>(
      () => GradeSearchDataSourceImpl(tusRepository: g<TUSRepository>()));
  g.registerFactory<GradeSearchRepository>(
      () => GradeSearchRepositoryImpl(dataSource: g<GradeSearchDataSource>()));
  g.registerFactory<HasTokenUsecase>(
      () => HasTokenUsecase(g<AuthRepository>()));
  g.registerLazySingleton<I18nDataSource>(
      () => I18nDataSourceImpl(sharedPreferences: g<SharedPreferences>()));
  g.registerFactory<I18nRepository>(
      () => I18nRepositoryImpl(dataSource: g<I18nDataSource>()));
  g.registerFactory<InitAboutUsecase>(
      () => InitAboutUsecase(g<AboutRepository>()));
  g.registerLazySingleton<LoginDataSource>(() => LoginDataSourceImpl(
      tusRepository: g<TUSRepository>(),
      sharedPreferences: g<SharedPreferences>()));
  g.registerFactory<LoginRepository>(
      () => LoginRepositoryImpl(dataSource: g<LoginDataSource>()));
  g.registerFactory<LoginUsecase>(() => LoginUsecase(g<LoginRepository>()));
  g.registerLazySingleton<MessageDataSource>(
      () => MessageDataSourceImpl(tusRepository: g<TUSRepository>()));
  g.registerFactory<MessageRepository>(
      () => MessageRepositoryImpl(dataSource: g<MessageDataSource>()));
  g.registerFactory<PersistTokenUsecase>(
      () => PersistTokenUsecase(g<AuthRepository>()));
  g.registerFactory<SaveCurriculumSettingUsecase>(
      () => SaveCurriculumSettingUsecase(g<CurriculumRepository>()));
  g.registerFactory<SaveShowModeUsecase>(
      () => SaveShowModeUsecase(g<CurriculumRepository>()));
  g.registerFactory<SearchGradeUsecase>(
      () => SearchGradeUsecase(g<GradeSearchRepository>()));
  g.registerFactory<SetI18nUsecase>(() => SetI18nUsecase(g<I18nRepository>()));
  g.registerLazySingleton<SettingDataSource>(() => SettingDataSourceImpl(
        sharedPreferences: g<SharedPreferences>(),
        secureStorage: g<FlutterSecureStorage>(),
        authDataSource: g<AuthDataSource>(),
      ));
  g.registerFactory<SettingRepository>(
      () => SettingRepositoryImpl(dataSource: g<SettingDataSource>()));
  g.registerLazySingleton<SyllabusSearchDataSource>(
      () => SyllabusSearchDataSourceImpl(tusRepository: g<TUSRepository>()));
  g.registerFactory<SyllabusSearchRepository>(() =>
      SyllabusSearchRepositoryImpl(dataSource: g<SyllabusSearchDataSource>()));
  g.registerFactory<TeacherBloc>(
      () => TeacherBloc(fetchTeacherUsecase: g<FetchTeacherUsecase>()));
  g.registerFactory<AboutBloc>(
      () => AboutBloc(initAboutUsecase: g<InitAboutUsecase>()));
  g.registerFactory<AttendanceRateBloc>(() => AttendanceRateBloc(
      fetchAttendanceRateUsecase: g<FetchAttendanceRateUsecase>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(
        deleteTokenUsecase: g<DeleteTokenUsecase>(),
        getTokenUsecase: g<GetTokenUsecase>(),
        persistTokenUsecase: g<PersistTokenUsecase>(),
        loginUsecase: g<LoginUsecase>(),
      ));
  g.registerFactory<BackToIndexUsecase>(
      () => BackToIndexUsecase(g<CurriculumRepository>()));
  g.registerFactory<CacheAllCurriculumUsecase>(
      () => CacheAllCurriculumUsecase(g<CurriculumRepository>()));
  g.registerFactory<CacheCurriculumDetailUsecase>(
      () => CacheCurriculumDetailUsecase(g<CurriculumRepository>()));
  g.registerFactory<CacheCurriculumUsecase>(
      () => CacheCurriculumUsecase(g<CurriculumRepository>()));
  g.registerFactory<CurriculumBloc>(() => CurriculumBloc(
        getCurriculumUsecase: g<GetCurriculumUsecase>(),
        cacheCurriculumUsecase: g<CacheCurriculumUsecase>(),
        fetchCurriculumUsecase: g<FetchCurriculumUsecase>(),
      ));
  g.registerFactory<CurriculumDetailBloc>(() => CurriculumDetailBloc(
        cacheCurriculumDetailUsecase: g<CacheCurriculumDetailUsecase>(),
        deleteCurriculumDetailUsecase: g<DeleteCurriculumDetailUsecase>(),
        getCurriculumDetailUsecase: g<GetCurriculumDetailUsecase>(),
        fetchCurriculumDetailUsecase: g<FetchCurriculumDetailUsecase>(),
        backToIndexUsecase: g<BackToIndexUsecase>(),
      ));
  g.registerFactory<CurriculumSettingBloc>(() => CurriculumSettingBloc(
        getCurriculumSettingUsecase: g<GetCurriculumSettingUsecase>(),
        getAllCurriculumSettingUsecase: g<GetAllCurriculumSettingUsecase>(),
        saveCurriculumSettingUsecase: g<SaveCurriculumSettingUsecase>(),
        deleteCurriculumSettingUsecase: g<DeleteCurriculumSettingUsecase>(),
      ));
  g.registerFactory<CurriculumShowModeBloc>(() => CurriculumShowModeBloc(
      saveShowModeUsecase: g<SaveShowModeUsecase>(),
      getShowModeUsecase: g<GetShowModeUsecase>()));
  g.registerFactory<DeleteAuthTokenUsecase>(
      () => DeleteAuthTokenUsecase(g<SettingRepository>()));
  g.registerFactory<DeleteCacheFilesUsecase>(
      () => DeleteCacheFilesUsecase(g<SettingRepository>()));
  g.registerFactory<FetchCategoryUsecase>(
      () => FetchCategoryUsecase(g<MessageRepository>()));
  g.registerFactory<FetchGradeDetailUsecase>(
      () => FetchGradeDetailUsecase(g<GradeSearchRepository>()));
  g.registerFactory<FetchGradeSearchFilterUsecase>(
      () => FetchGradeSearchFilterUsecase(g<GradeSearchRepository>()));
  g.registerFactory<FetchGradeSearchPageUsecase>(
      () => FetchGradeSearchPageUsecase(g<GradeSearchRepository>()));
  g.registerFactory<FetchGradeUsecase>(
      () => FetchGradeUsecase(g<GradeRepository>()));
  g.registerFactory<FetchMessageUsecase>(
      () => FetchMessageUsecase(g<MessageRepository>()));
  g.registerFactory<FetchPageUsecase>(
      () => FetchPageUsecase(g<MessageRepository>()));
  g.registerFactory<FetchSyllabusDetailUsecase>(
      () => FetchSyllabusDetailUsecase(g<SyllabusSearchRepository>()));
  g.registerFactory<FetchSyllabusSearchFilterUsecase>(
      () => FetchSyllabusSearchFilterUsecase(g<SyllabusSearchRepository>()));
  g.registerFactory<FetchSyllabusUsecase>(
      () => FetchSyllabusUsecase(g<SyllabusSearchRepository>()));
  g.registerFactory<GetI18nUsecase>(() => GetI18nUsecase(g<I18nRepository>()));
  g.registerFactory<GradeBloc>(
      () => GradeBloc(fetchGradeUsecase: g<FetchGradeUsecase>()));
  g.registerFactory<GradeSearchBloc>(() => GradeSearchBloc(
      searchGradeUsecase: g<SearchGradeUsecase>(),
      fetchGradeSearchPageUsecase: g<FetchGradeSearchPageUsecase>()));
  g.registerFactory<GradeSearchDetailBloc>(() => GradeSearchDetailBloc(
      fetchGradeDetailUsecase: g<FetchGradeDetailUsecase>()));
  g.registerFactory<GradeSearchFilterBloc>(() => GradeSearchFilterBloc(
      fetchGradeSearchFilterUsecase: g<FetchGradeSearchFilterUsecase>()));
  g.registerFactory<I18nBloc>(() => I18nBloc(
      getI18nUsecase: g<GetI18nUsecase>(),
      setI18nUsecase: g<SetI18nUsecase>()));
  g.registerFactory<InitSettingUsecase>(
      () => InitSettingUsecase(g<SettingRepository>()));
  g.registerFactory<IsFirstRunUsecase>(
      () => IsFirstRunUsecase(g<LoginRepository>()));
  g.registerFactory<LoginBloc>(() => LoginBloc(
      loginUsecase: g<LoginUsecase>(),
      isFirstRunUsecase: g<IsFirstRunUsecase>()));
  g.registerFactory<MessageBloc>(
      () => MessageBloc(fetchPageUsecase: g<FetchPageUsecase>()));
  g.registerFactory<MessageDetailBloc>(
      () => MessageDetailBloc(fetchMessageUsecase: g<FetchMessageUsecase>()));
  g.registerFactory<MessageEntrySwitchedUsecase>(
      () => MessageEntrySwitchedUsecase(g<MessageRepository>()));
  g.registerFactory<SearchSyllabusUsecase>(
      () => SearchSyllabusUsecase(g<SyllabusSearchRepository>()));
  g.registerFactory<SetAuthTokenUsecase>(
      () => SetAuthTokenUsecase(g<SettingRepository>()));
  g.registerFactory<SetAutoLoginUsecase>(
      () => SetAutoLoginUsecase(g<SettingRepository>()));
  g.registerFactory<SettingBloc>(() => SettingBloc(
        initSettingUsecase: g<InitSettingUsecase>(),
        setAutoLoginUsecase: g<SetAutoLoginUsecase>(),
        deleteAuthTokenUsecase: g<DeleteAuthTokenUsecase>(),
        setAuthTokenUsecase: g<SetAuthTokenUsecase>(),
        deleteCacheFilesUsecase: g<DeleteCacheFilesUsecase>(),
      ));
  g.registerFactory<SyllabusDetailBackUsecase>(
      () => SyllabusDetailBackUsecase(g<SyllabusSearchRepository>()));
  g.registerFactory<SyllabusSearchBloc>(() => SyllabusSearchBloc(
      searchSyllabusUsecase: g<SearchSyllabusUsecase>(),
      fetchSyllabusUsecase: g<FetchSyllabusUsecase>()));
  g.registerFactory<SyllabusSearchDetailBloc>(() => SyllabusSearchDetailBloc(
      fetSyllabusDetailUsecase: g<FetchSyllabusDetailUsecase>(),
      syllabusDetailBackUsecase: g<SyllabusDetailBackUsecase>()));
  g.registerFactory<SyllabusSearchFilterBloc>(() => SyllabusSearchFilterBloc(
      fetchSyllabusSearchFilterUsecase: g<FetchSyllabusSearchFilterUsecase>()));
  g.registerFactory<AllCurriculumBloc>(() => AllCurriculumBloc(
        getAllCurriculumUsecase: g<GetAllCurriculumUsecase>(),
        cacheAllCurriculumUsecase: g<CacheAllCurriculumUsecase>(),
        fetchAllCurriculumUsecase: g<FetchAllCurriculumUsecase>(),
      ));
  g.registerFactory<CategoryBloc>(
      () => CategoryBloc(fetchCategoryUsecase: g<FetchCategoryUsecase>()));
  g.registerFactory<MessageEntryBloc>(() => MessageEntryBloc(
      messageEntrySwitchedUsecase: g<MessageEntrySwitchedUsecase>()));
}

class _$RegisterModule extends RegisterModule {}
