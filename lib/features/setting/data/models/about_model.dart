import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/about.dart';

part 'about_model.freezed.dart';
part 'about_model.g.dart';

@freezed
abstract class AboutModel implements _$AboutModel {
  const factory AboutModel({
    @required String version,
    @required String author,
    @required String authorEmail,
    @required String appName,
    @required String packageName,
    @required String buildNumber,
    @required String platform,
    @required String issuesUrl,
  }) = _AboutModel;
  const AboutModel._();

  About toDomain() {
    return About(
      version: version,
      author: author,
      authorEmail: authorEmail,
      appName: appName,
      packageName: packageName,
      buildNumber: buildNumber,
      platform: platform,
      issuesUrl: issuesUrl,
    );
  }

  factory AboutModel.fromJson(Map<String, dynamic> json) => _$AboutModelFromJson(json);
}
