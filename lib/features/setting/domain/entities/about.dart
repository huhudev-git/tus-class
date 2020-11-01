import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class About extends Equatable {
  final String version;
  final String author;
  final String authorEmail;
  final String appName;
  final String packageName;
  final String buildNumber;
  final String platform;
  final String issuesUrl;

  const About({
    @required this.version,
    @required this.author,
    @required this.authorEmail,
    @required this.appName,
    @required this.packageName,
    @required this.buildNumber,
    @required this.platform,
    @required this.issuesUrl,
  });

  @override
  List<Object> get props => [
        version,
        author,
        authorEmail,
        appName,
        buildNumber,
        packageName,
        platform,
        issuesUrl,
      ];

  factory About.init() => About(
        version: '0.0.0',
        author: 'huhu',
        authorEmail: 'tus-class@huhu.press',
        appName: 'TUS CLASS(Unofficial)',
        packageName: 'com.huhu.tusclass',
        buildNumber: '0',
        platform: 'Mobile',
        issuesUrl: 'https://github.com/huhugiter/tus-class/issues',
      );
}
