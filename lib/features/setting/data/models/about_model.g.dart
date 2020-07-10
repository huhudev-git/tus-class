// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AboutModel _$_$_AboutModelFromJson(Map json) {
  return _$_AboutModel(
    version: json['version'] as String,
    author: json['author'] as String,
    authorEmail: json['authorEmail'] as String,
    appName: json['appName'] as String,
    packageName: json['packageName'] as String,
    buildNumber: json['buildNumber'] as String,
    platform: json['platform'] as String,
    issuesUrl: json['issuesUrl'] as String,
  );
}

Map<String, dynamic> _$_$_AboutModelToJson(_$_AboutModel instance) =>
    <String, dynamic>{
      'version': instance.version,
      'author': instance.author,
      'authorEmail': instance.authorEmail,
      'appName': instance.appName,
      'packageName': instance.packageName,
      'buildNumber': instance.buildNumber,
      'platform': instance.platform,
      'issuesUrl': instance.issuesUrl,
    };
