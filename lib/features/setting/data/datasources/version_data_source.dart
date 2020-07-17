import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';
import 'package:yaml/yaml.dart';

abstract class VersionDataSource {
  Future<bool> hasUpdate();
}

@LazySingleton(as: VersionDataSource)
class VersionDataSourceImpl implements VersionDataSource {
  final PackageInfo packageInfo;

  VersionDataSourceImpl({
    @required this.packageInfo,
  });

  @override
  Future<bool> hasUpdate() async {
    final version = packageInfo.version;
    final buildNumber = packageInfo.buildNumber;
    final versions = version.split('.');

    final r = await Dio().get('https://raw.githubusercontent.com/huhugiter/tus-class/master/pubspec.yaml');
    final doc = loadYaml(r.data);
    final versionAndBuildNumber = doc['version'].split('+');
    final List<String> uVersion = versionAndBuildNumber[0].split('.');
    final String ubuildNumber = versionAndBuildNumber[1];

    for (var i = 0; i < uVersion.length; i++) {
      if (int.parse(uVersion[i]) > int.parse(versions[i])) {
        return true;
      }
    }

    if (int.parse(ubuildNumber) > int.parse(buildNumber)) {
      return true;
    }

    return false;
  }
}
