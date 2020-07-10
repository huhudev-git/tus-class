import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String curriculumDBName = 'curriculum.db';

@module
abstract class RegisterModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  FlutterSecureStorage get futterSecureStorage => const FlutterSecureStorage();

  @preResolve
  @lazySingleton
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  Dio get dio => Dio(
        BaseOptions(
          receiveTimeout: 20 * 1000,
          connectTimeout: 20 * 1000,
          contentType: Headers.formUrlEncodedContentType,
        ),
      )..interceptors.add(CookieManager(CookieJar()));

  @Named('curriculum_db')
  @preResolve
  @lazySingleton
  Future<Database> db() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = join(appDocumentDir.path, curriculumDBName);
    final DatabaseFactory dbFactory = databaseFactoryIo;
    final Database db = await dbFactory.openDatabase(dbPath);
    return db;
  }
}
