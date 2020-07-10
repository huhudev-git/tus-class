import 'package:path_provider/path_provider.dart' as path_provider;

import 'page.dart';

abstract class DownloadPage extends Page {
  static Future<String> path() async {
    final tempDir = await path_provider.getTemporaryDirectory();
    final tempPath = tempDir.path;
    return tempPath;
  }

  Function(int, int) get onReceiveProgress => null;

  String get filename => null;

  @override
  String toString() => 'DownloadPage';
}
