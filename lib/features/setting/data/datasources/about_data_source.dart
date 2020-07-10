import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';

import '../models/about_model.dart';

abstract class AboutDataSource {
  Future<AboutModel> init();
}

@LazySingleton(as: AboutDataSource)
class AboutDataSourceImpl implements AboutDataSource {
  final PackageInfo packageInfo;

  AboutDataSourceImpl({
    @required this.packageInfo,
  });

  @override
  Future<AboutModel> init() async {
    return AboutModel.fromJson({
      'version': packageInfo.version,
      'author': 'huhu',
      'authorEmail': 'tus-class@huhu.press',
      'appName': packageInfo.appName,
      'packageName': packageInfo.packageName,
      'buildNumber': packageInfo.buildNumber,
      'platform': Platform.isAndroid ? 'Android' : 'IOS',
      'issuesUrl': 'https://github.com/huhugiter/tus-class/issues',
    });
  }
}
