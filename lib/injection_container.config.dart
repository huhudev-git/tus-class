// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:sembast/sembast.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/setting/presentation/about_bloc/about_bloc.dart';
import 'features/setting/data/datasources/about_data_source.dart';
import 'features/setting/domain/repositories/about_repository.dart';
import 'features/setting/data/repositories/about_repository_impl.dart';
import 'features/curriculum/presentation/all_curriculum_bloc/all_curriculum_bloc.dart';
import 'features/curriculum/presentation/attendance_rate_bloc/attendance_rate_bloc.dart';
import 'features/curriculum/data/datasources/attendance_rate_data_source.dart';
import 'features/curriculum/domain/repositories/attendance_rate_repository.dart';
import 'features/curriculum/data/repositories/attendance_rate_repository_impl.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/data/datasources/auth_data_source.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/curriculum/domain/usecase/back_to_index_usecase.dart';
import 'features/curriculum/domain/usecase/cache_all_curriculum_usecase.dart';
import 'features/curriculum/domain/usecase/cache_curriculum_detail_usecase.dart';
import 'features/curriculum/domain/usecase/cache_curriculum_usecase.dart';
import 'features/message/presentation/category_bloc/category_bloc.dart';
import 'features/curriculum/presentation/curriculum_bloc/curriculum_bloc.dart';
import 'features/curriculum/data/datasources/curriculum_data_source.dart';
import 'features/curriculum/presentation/curriculum_detail_bloc/curriculum_detail_bloc.dart';
import 'features/curriculum/domain/repositories/curriculum_repository.dart';
import 'features/curriculum/data/repositories/curriculum_repository_impl.dart';
import 'features/curriculum/presentation/curriculum_setting_bloc/curriculum_setting_bloc.dart';
import 'features/curriculum/presentation/curriculum_show_mode_bloc/curriculum_show_mode_bloc.dart';
import 'features/setting/domain/usecase/delete_auth_token_usecase.dart';
import 'features/setting/domain/usecase/delete_cache_files_usecase.dart';
import 'features/curriculum/domain/usecase/delete_curriculum_detail_usecase.dart';
import 'features/curriculum/domain/usecase/delete_curriculum_setting_usecase.dart';
import 'features/auth/domain/usecases/delete_token_usecase.dart';
import 'features/curriculum/domain/usecase/fetch_all_curriculum_usecase.dart';
import 'features/curriculum/domain/usecase/fetch_attendance_rate_usecase.dart';
import 'features/message/domain/usecases/fetch_category_usecase.dart';
import 'features/curriculum/domain/usecase/fetch_curriculum_detail_usecase.dart';
import 'features/curriculum/domain/usecase/fetch_curriculum_usecase.dart';
import 'features/grade_search/domain/usecase/fetch_grade_detail_usecase.dart';
import 'features/grade_search/domain/usecase/fetch_grade_search_filter_usecase.dart';
import 'features/grade_search/domain/usecase/fetch_grade_search_page_usecase.dart';
import 'features/grade/domain/usecase/fetch_grade_usecase.dart';
import 'features/message/domain/usecases/fetch_message_usecase.dart';
import 'features/message/domain/usecases/fetch_page_usecase.dart';
import 'features/syllabus_search/domain/usecase/fetch_syllabus_detail_usecase.dart';
import 'features/syllabus_search/domain/usecase/fetch_syllabus_search_filter_usecase.dart';
import 'features/syllabus_search/domain/usecase/fetch_page_usecase.dart';
import 'features/teacher/domain/usecase/fetch_teacher_usecase.dart';
import 'features/curriculum/domain/usecase/get_all_curriculum_setting_usecase.dart';
import 'features/curriculum/domain/usecase/get_all_curriculum_usecase.dart';
import 'features/curriculum/domain/usecase/get_curriculum_detail_usecase.dart';
import 'features/curriculum/domain/usecase/get_curriculum_setting_usecase.dart';
import 'features/curriculum/domain/usecase/get_curriculum_usecase.dart';
import 'features/setting/domain/usecase/get_i18n_usecase.dart';
import 'features/curriculum/domain/usecase/get_show_mode_usecase.dart';
import 'features/auth/domain/usecases/get_token_usecase.dart';
import 'features/grade/presentation/grade_bloc/grade_bloc.dart';
import 'features/grade/data/datasources/grade_data_source.dart';
import 'features/grade/domain/repositories/grade_repository.dart';
import 'features/grade/data/repositories/grade_repository_impl.dart';
import 'features/grade_search/presentation/grade_search_bloc/grade_search_bloc.dart';
import 'features/grade_search/data/datasources/grade_search_data_source.dart';
import 'features/grade_search/presentation/grade_search_detail_bloc/grade_search_detail_bloc.dart';
import 'features/grade_search/presentation/grade_search_filter_bloc/grade_search_filter_bloc.dart';
import 'features/grade_search/domain/repositories/grade_search_repository.dart';
import 'features/grade_search/data/repositories/grade_search_repository_impl.dart';
import 'features/auth/domain/usecases/has_token_usecase.dart';
import 'features/setting/presentation/i18n_bloc/i18n_bloc.dart';
import 'features/setting/data/datasources/i18n_data_source.dart';
import 'features/setting/domain/repositories/i18n_repository.dart';
import 'features/setting/data/repositories/i18n_repository_impl.dart';
import 'features/setting/domain/usecase/init_about_usecase.dart';
import 'features/setting/domain/usecase/init_setting_usecase.dart';
import 'features/login/domain/usecases/is_fisrt_run_usecase.dart';
import 'features/login/presentation/bloc/login_bloc.dart';
import 'features/login/data/datasources/login_data_source.dart';
import 'features/login/domain/repositories/login_repository.dart';
import 'features/login/data/repositories/login_repository_impl.dart';
import 'features/login/domain/usecases/login_usecase.dart';
import 'features/message/presentation/message_bloc/message_bloc.dart';
import 'features/message/data/datasources/message_data_source.dart';
import 'features/message/presentation/message_detail_bloc/message_detail_bloc.dart';
import 'features/message/presentation/message_entry_bloc/message_entry_bloc.dart';
import 'features/message/domain/usecases/message_entry_switched_usecase.dart';
import 'features/message/domain/repositories/message_repository.dart';
import 'features/message/data/repositories/message_repository_impl.dart';
import 'features/auth/domain/usecases/persist_token_usecase.dart';
import 'core/register_module.dart';
import 'features/curriculum/domain/usecase/save_curriculum_setting_usecase.dart';
import 'features/curriculum/domain/usecase/save_show_mode_usecase.dart';
import 'features/grade_search/domain/usecase/search_grade_usecase.dart';
import 'features/syllabus_search/domain/usecase/search_syllabus_usecase.dart';
import 'features/setting/domain/usecase/set_auth_token_usecase.dart';
import 'features/setting/domain/usecase/set_auto_login_usecase.dart';
import 'features/setting/domain/usecase/set_i18n_usecase.dart';
import 'features/setting/presentation/setting_bloc/setting_bloc.dart';
import 'features/setting/data/datasources/setting_data_source.dart';
import 'features/setting/domain/repositories/setting_repository.dart';
import 'features/setting/data/repositories/setting_repository_impl.dart';
import 'features/syllabus_search/domain/usecase/syllabus_detail_back_usecase.dart';
import 'features/syllabus_search/presentation/syllabus_search_bloc/syllabus_search_bloc.dart';
import 'features/syllabus_search/data/datasources/syllabus_search_data_source.dart';
import 'features/syllabus_search/presentation/syllabus_search_detail_bloc/syllabus_search_detail_bloc.dart';
import 'features/syllabus_search/presentation/syllabus_search_filter_bloc/syllabus_search_filter_bloc.dart';
import 'features/syllabus_search/domain/repositories/syllabus_search_repository.dart';
import 'features/syllabus_search/data/repositories/syllabus_search_repository_impl.dart';
import 'core/tus_client/data_source/tus_client.dart';
import 'core/tus_client/repositories/tus_repository.dart';
import 'core/tus_client/repositories/tus_repository_impl.dart';
import 'features/teacher/presentation/teacher_bloc/teacher_bloc.dart';
import 'features/teacher/data/datasources/teacher_data_source.dart';
import 'features/teacher/domain/repositories/teacher_repository.dart';
import 'features/teacher/data/repositories/teacher_repository_impl.dart';
import 'features/setting/presentation/version_bloc/version_bloc.dart';
import 'features/setting/domain/usecase/version_check_usecase.dart';
import 'features/setting/data/datasources/version_data_source.dart';
import 'features/setting/domain/repositories/version_repository.dart';
import 'features/setting/data/repositories/version_repository_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  final database = await registerModule.db();
  gh.lazySingleton<Database>(() => database, instanceName: 'curriculum_db');
  gh.factory<Dio>(() => registerModule.dio);
  gh.lazySingleton<FlutterSecureStorage>(
      () => registerModule.futterSecureStorage);
  final packageInfo = await registerModule.packageInfo;
  gh.lazySingleton<PackageInfo>(() => packageInfo);
  final sharedPreferences = await registerModule.prefs;
  gh.lazySingleton<SharedPreferences>(() => sharedPreferences);
  gh.lazySingleton<TUSClient>(() => TUSClient(dio: get<Dio>()));
  gh.factory<TUSRepository>(
      () => TUSRepositoryImpl(tusClient: get<TUSClient>()));
  gh.lazySingleton<TeacherDataSource>(
      () => TeacherDataSourceImpl(tusRepository: get<TUSRepository>()));
  gh.factory<TeacherRepository>(
      () => TeacherRepositoryImpl(dataSource: get<TeacherDataSource>()));
  gh.lazySingleton<VersionDataSource>(
      () => VersionDataSourceImpl(packageInfo: get<PackageInfo>()));
  gh.factory<VersionRepository>(
      () => VersionRepositoryImpl(dataSource: get<VersionDataSource>()));
  gh.lazySingleton<AboutDataSource>(
      () => AboutDataSourceImpl(packageInfo: get<PackageInfo>()));
  gh.factory<AboutRepository>(
      () => AboutRepositoryImpl(dataSource: get<AboutDataSource>()));
  gh.lazySingleton<AttendanceRateDataSource>(
      () => AttendanceRateDataSourceImpl(tusRepository: get<TUSRepository>()));
  gh.factory<AttendanceRateRepository>(() => AttendanceRateRepositoryImpl(
      dataSource: get<AttendanceRateDataSource>()));
  gh.lazySingleton<AuthDataSource>(() => AuthDataSourceImpl(
      sharedPreferences: get<SharedPreferences>(),
      secureStorage: get<FlutterSecureStorage>()));
  gh.factory<AuthRepository>(
      () => AuthRepositoryImpl(dataSource: get<AuthDataSource>()));
  gh.lazySingleton<CurriculumDataSource>(() => CurriculumDataSourceImpl(
        sharedPreferences: get<SharedPreferences>(),
        tusRepository: get<TUSRepository>(),
        db: get<Database>(instanceName: 'curriculum_db'),
      ));
  gh.factory<CurriculumRepository>(
      () => CurriculumRepositoryImpl(dataSource: get<CurriculumDataSource>()));
  gh.factory<DeleteCurriculumDetailUsecase>(
      () => DeleteCurriculumDetailUsecase(get<CurriculumRepository>()));
  gh.factory<DeleteCurriculumSettingUsecase>(
      () => DeleteCurriculumSettingUsecase(get<CurriculumRepository>()));
  gh.factory<DeleteTokenUsecase>(
      () => DeleteTokenUsecase(get<AuthRepository>()));
  gh.factory<FetchAllCurriculumUsecase>(
      () => FetchAllCurriculumUsecase(get<CurriculumRepository>()));
  gh.factory<FetchAttendanceRateUsecase>(
      () => FetchAttendanceRateUsecase(get<AttendanceRateRepository>()));
  gh.factory<FetchCurriculumDetailUsecase>(
      () => FetchCurriculumDetailUsecase(get<CurriculumRepository>()));
  gh.factory<FetchCurriculumUsecase>(
      () => FetchCurriculumUsecase(get<CurriculumRepository>()));
  gh.factory<FetchTeacherUsecase>(
      () => FetchTeacherUsecase(get<TeacherRepository>()));
  gh.factory<GetAllCurriculumSettingUsecase>(
      () => GetAllCurriculumSettingUsecase(get<CurriculumRepository>()));
  gh.factory<GetAllCurriculumUsecase>(
      () => GetAllCurriculumUsecase(get<CurriculumRepository>()));
  gh.factory<GetCurriculumDetailUsecase>(
      () => GetCurriculumDetailUsecase(get<CurriculumRepository>()));
  gh.factory<GetCurriculumSettingUsecase>(
      () => GetCurriculumSettingUsecase(get<CurriculumRepository>()));
  gh.factory<GetCurriculumUsecase>(
      () => GetCurriculumUsecase(get<CurriculumRepository>()));
  gh.factory<GetShowModeUsecase>(
      () => GetShowModeUsecase(get<CurriculumRepository>()));
  gh.factory<GetTokenUsecase>(() => GetTokenUsecase(get<AuthRepository>()));
  gh.lazySingleton<GradeDataSource>(
      () => GradeDataSourceImpl(tusRepository: get<TUSRepository>()));
  gh.factory<GradeRepository>(
      () => GradeRepositoryImpl(dataSource: get<GradeDataSource>()));
  gh.lazySingleton<GradeSearchDataSource>(
      () => GradeSearchDataSourceImpl(tusRepository: get<TUSRepository>()));
  gh.factory<GradeSearchRepository>(() =>
      GradeSearchRepositoryImpl(dataSource: get<GradeSearchDataSource>()));
  gh.factory<HasTokenUsecase>(() => HasTokenUsecase(get<AuthRepository>()));
  gh.lazySingleton<I18nDataSource>(
      () => I18nDataSourceImpl(sharedPreferences: get<SharedPreferences>()));
  gh.factory<I18nRepository>(
      () => I18nRepositoryImpl(dataSource: get<I18nDataSource>()));
  gh.factory<InitAboutUsecase>(() => InitAboutUsecase(get<AboutRepository>()));
  gh.lazySingleton<LoginDataSource>(() => LoginDataSourceImpl(
      tusRepository: get<TUSRepository>(),
      sharedPreferences: get<SharedPreferences>()));
  gh.factory<LoginRepository>(
      () => LoginRepositoryImpl(dataSource: get<LoginDataSource>()));
  gh.factory<LoginUsecase>(() => LoginUsecase(get<LoginRepository>()));
  gh.lazySingleton<MessageDataSource>(
      () => MessageDataSourceImpl(tusRepository: get<TUSRepository>()));
  gh.factory<MessageRepository>(
      () => MessageRepositoryImpl(dataSource: get<MessageDataSource>()));
  gh.factory<PersistTokenUsecase>(
      () => PersistTokenUsecase(get<AuthRepository>()));
  gh.factory<SaveCurriculumSettingUsecase>(
      () => SaveCurriculumSettingUsecase(get<CurriculumRepository>()));
  gh.factory<SaveShowModeUsecase>(
      () => SaveShowModeUsecase(get<CurriculumRepository>()));
  gh.factory<SearchGradeUsecase>(
      () => SearchGradeUsecase(get<GradeSearchRepository>()));
  gh.factory<SetI18nUsecase>(() => SetI18nUsecase(get<I18nRepository>()));
  gh.lazySingleton<SettingDataSource>(() => SettingDataSourceImpl(
        sharedPreferences: get<SharedPreferences>(),
        secureStorage: get<FlutterSecureStorage>(),
        authDataSource: get<AuthDataSource>(),
      ));
  gh.factory<SettingRepository>(
      () => SettingRepositoryImpl(dataSource: get<SettingDataSource>()));
  gh.lazySingleton<SyllabusSearchDataSource>(
      () => SyllabusSearchDataSourceImpl(tusRepository: get<TUSRepository>()));
  gh.factory<SyllabusSearchRepository>(() => SyllabusSearchRepositoryImpl(
      dataSource: get<SyllabusSearchDataSource>()));
  gh.factory<TeacherBloc>(
      () => TeacherBloc(fetchTeacherUsecase: get<FetchTeacherUsecase>()));
  gh.factory<VersionCheckUsecase>(
      () => VersionCheckUsecase(get<VersionRepository>()));
  gh.factory<AboutBloc>(
      () => AboutBloc(initAboutUsecase: get<InitAboutUsecase>()));
  gh.factory<AttendanceRateBloc>(() => AttendanceRateBloc(
      fetchAttendanceRateUsecase: get<FetchAttendanceRateUsecase>()));
  gh.factory<AuthBloc>(() => AuthBloc(
        deleteTokenUsecase: get<DeleteTokenUsecase>(),
        getTokenUsecase: get<GetTokenUsecase>(),
        persistTokenUsecase: get<PersistTokenUsecase>(),
        loginUsecase: get<LoginUsecase>(),
      ));
  gh.factory<BackToIndexUsecase>(
      () => BackToIndexUsecase(get<CurriculumRepository>()));
  gh.factory<CacheAllCurriculumUsecase>(
      () => CacheAllCurriculumUsecase(get<CurriculumRepository>()));
  gh.factory<CacheCurriculumDetailUsecase>(
      () => CacheCurriculumDetailUsecase(get<CurriculumRepository>()));
  gh.factory<CacheCurriculumUsecase>(
      () => CacheCurriculumUsecase(get<CurriculumRepository>()));
  gh.factory<CurriculumBloc>(() => CurriculumBloc(
        getCurriculumUsecase: get<GetCurriculumUsecase>(),
        cacheCurriculumUsecase: get<CacheCurriculumUsecase>(),
        fetchCurriculumUsecase: get<FetchCurriculumUsecase>(),
      ));
  gh.factory<CurriculumDetailBloc>(() => CurriculumDetailBloc(
        cacheCurriculumDetailUsecase: get<CacheCurriculumDetailUsecase>(),
        deleteCurriculumDetailUsecase: get<DeleteCurriculumDetailUsecase>(),
        getCurriculumDetailUsecase: get<GetCurriculumDetailUsecase>(),
        fetchCurriculumDetailUsecase: get<FetchCurriculumDetailUsecase>(),
        backToIndexUsecase: get<BackToIndexUsecase>(),
      ));
  gh.factory<CurriculumSettingBloc>(() => CurriculumSettingBloc(
        getCurriculumSettingUsecase: get<GetCurriculumSettingUsecase>(),
        getAllCurriculumSettingUsecase: get<GetAllCurriculumSettingUsecase>(),
        saveCurriculumSettingUsecase: get<SaveCurriculumSettingUsecase>(),
        deleteCurriculumSettingUsecase: get<DeleteCurriculumSettingUsecase>(),
      ));
  gh.factory<CurriculumShowModeBloc>(() => CurriculumShowModeBloc(
      saveShowModeUsecase: get<SaveShowModeUsecase>(),
      getShowModeUsecase: get<GetShowModeUsecase>()));
  gh.factory<DeleteAuthTokenUsecase>(
      () => DeleteAuthTokenUsecase(get<SettingRepository>()));
  gh.factory<DeleteCacheFilesUsecase>(
      () => DeleteCacheFilesUsecase(get<SettingRepository>()));
  gh.factory<FetchCategoryUsecase>(
      () => FetchCategoryUsecase(get<MessageRepository>()));
  gh.factory<FetchGradeDetailUsecase>(
      () => FetchGradeDetailUsecase(get<GradeSearchRepository>()));
  gh.factory<FetchGradeSearchFilterUsecase>(
      () => FetchGradeSearchFilterUsecase(get<GradeSearchRepository>()));
  gh.factory<FetchGradeSearchPageUsecase>(
      () => FetchGradeSearchPageUsecase(get<GradeSearchRepository>()));
  gh.factory<FetchGradeUsecase>(
      () => FetchGradeUsecase(get<GradeRepository>()));
  gh.factory<FetchMessageUsecase>(
      () => FetchMessageUsecase(get<MessageRepository>()));
  gh.factory<FetchPageUsecase>(
      () => FetchPageUsecase(get<MessageRepository>()));
  gh.factory<FetchSyllabusDetailUsecase>(
      () => FetchSyllabusDetailUsecase(get<SyllabusSearchRepository>()));
  gh.factory<FetchSyllabusSearchFilterUsecase>(
      () => FetchSyllabusSearchFilterUsecase(get<SyllabusSearchRepository>()));
  gh.factory<FetchSyllabusUsecase>(
      () => FetchSyllabusUsecase(get<SyllabusSearchRepository>()));
  gh.factory<GetI18nUsecase>(() => GetI18nUsecase(get<I18nRepository>()));
  gh.factory<GradeBloc>(
      () => GradeBloc(fetchGradeUsecase: get<FetchGradeUsecase>()));
  gh.factory<GradeSearchBloc>(() => GradeSearchBloc(
      searchGradeUsecase: get<SearchGradeUsecase>(),
      fetchGradeSearchPageUsecase: get<FetchGradeSearchPageUsecase>()));
  gh.factory<GradeSearchDetailBloc>(() => GradeSearchDetailBloc(
      fetchGradeDetailUsecase: get<FetchGradeDetailUsecase>()));
  gh.factory<GradeSearchFilterBloc>(() => GradeSearchFilterBloc(
      fetchGradeSearchFilterUsecase: get<FetchGradeSearchFilterUsecase>()));
  gh.factory<I18nBloc>(() => I18nBloc(
      getI18nUsecase: get<GetI18nUsecase>(),
      setI18nUsecase: get<SetI18nUsecase>()));
  gh.factory<InitSettingUsecase>(
      () => InitSettingUsecase(get<SettingRepository>()));
  gh.factory<IsFirstRunUsecase>(
      () => IsFirstRunUsecase(get<LoginRepository>()));
  gh.factory<LoginBloc>(() => LoginBloc(
      loginUsecase: get<LoginUsecase>(),
      isFirstRunUsecase: get<IsFirstRunUsecase>()));
  gh.factory<MessageBloc>(
      () => MessageBloc(fetchPageUsecase: get<FetchPageUsecase>()));
  gh.factory<MessageDetailBloc>(
      () => MessageDetailBloc(fetchMessageUsecase: get<FetchMessageUsecase>()));
  gh.factory<MessageEntrySwitchedUsecase>(
      () => MessageEntrySwitchedUsecase(get<MessageRepository>()));
  gh.factory<SearchSyllabusUsecase>(
      () => SearchSyllabusUsecase(get<SyllabusSearchRepository>()));
  gh.factory<SetAuthTokenUsecase>(
      () => SetAuthTokenUsecase(get<SettingRepository>()));
  gh.factory<SetAutoLoginUsecase>(
      () => SetAutoLoginUsecase(get<SettingRepository>()));
  gh.factory<SettingBloc>(() => SettingBloc(
        initSettingUsecase: get<InitSettingUsecase>(),
        setAutoLoginUsecase: get<SetAutoLoginUsecase>(),
        deleteAuthTokenUsecase: get<DeleteAuthTokenUsecase>(),
        setAuthTokenUsecase: get<SetAuthTokenUsecase>(),
        deleteCacheFilesUsecase: get<DeleteCacheFilesUsecase>(),
      ));
  gh.factory<SyllabusDetailBackUsecase>(
      () => SyllabusDetailBackUsecase(get<SyllabusSearchRepository>()));
  gh.factory<SyllabusSearchBloc>(() => SyllabusSearchBloc(
      searchSyllabusUsecase: get<SearchSyllabusUsecase>(),
      fetchSyllabusUsecase: get<FetchSyllabusUsecase>()));
  gh.factory<SyllabusSearchDetailBloc>(() => SyllabusSearchDetailBloc(
      fetSyllabusDetailUsecase: get<FetchSyllabusDetailUsecase>(),
      syllabusDetailBackUsecase: get<SyllabusDetailBackUsecase>()));
  gh.factory<SyllabusSearchFilterBloc>(() => SyllabusSearchFilterBloc(
      fetchSyllabusSearchFilterUsecase:
          get<FetchSyllabusSearchFilterUsecase>()));
  gh.factory<VersionBloc>(
      () => VersionBloc(versionCheckUsecase: get<VersionCheckUsecase>()));
  gh.factory<AllCurriculumBloc>(() => AllCurriculumBloc(
        getAllCurriculumUsecase: get<GetAllCurriculumUsecase>(),
        cacheAllCurriculumUsecase: get<CacheAllCurriculumUsecase>(),
        fetchAllCurriculumUsecase: get<FetchAllCurriculumUsecase>(),
      ));
  gh.factory<CategoryBloc>(
      () => CategoryBloc(fetchCategoryUsecase: get<FetchCategoryUsecase>()));
  gh.factory<MessageEntryBloc>(() => MessageEntryBloc(
      messageEntrySwitchedUsecase: get<MessageEntrySwitchedUsecase>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
