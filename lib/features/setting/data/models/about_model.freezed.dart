// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'about_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AboutModel _$AboutModelFromJson(Map<String, dynamic> json) {
  return _AboutModel.fromJson(json);
}

class _$AboutModelTearOff {
  const _$AboutModelTearOff();

  _AboutModel call(
      {@required String version,
      @required String author,
      @required String authorEmail,
      @required String appName,
      @required String packageName,
      @required String buildNumber,
      @required String platform,
      @required String issuesUrl}) {
    return _AboutModel(
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
}

// ignore: unused_element
const $AboutModel = _$AboutModelTearOff();

mixin _$AboutModel {
  String get version;
  String get author;
  String get authorEmail;
  String get appName;
  String get packageName;
  String get buildNumber;
  String get platform;
  String get issuesUrl;

  Map<String, dynamic> toJson();
  $AboutModelCopyWith<AboutModel> get copyWith;
}

abstract class $AboutModelCopyWith<$Res> {
  factory $AboutModelCopyWith(
          AboutModel value, $Res Function(AboutModel) then) =
      _$AboutModelCopyWithImpl<$Res>;
  $Res call(
      {String version,
      String author,
      String authorEmail,
      String appName,
      String packageName,
      String buildNumber,
      String platform,
      String issuesUrl});
}

class _$AboutModelCopyWithImpl<$Res> implements $AboutModelCopyWith<$Res> {
  _$AboutModelCopyWithImpl(this._value, this._then);

  final AboutModel _value;
  // ignore: unused_field
  final $Res Function(AboutModel) _then;

  @override
  $Res call({
    Object version = freezed,
    Object author = freezed,
    Object authorEmail = freezed,
    Object appName = freezed,
    Object packageName = freezed,
    Object buildNumber = freezed,
    Object platform = freezed,
    Object issuesUrl = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed ? _value.version : version as String,
      author: author == freezed ? _value.author : author as String,
      authorEmail:
          authorEmail == freezed ? _value.authorEmail : authorEmail as String,
      appName: appName == freezed ? _value.appName : appName as String,
      packageName:
          packageName == freezed ? _value.packageName : packageName as String,
      buildNumber:
          buildNumber == freezed ? _value.buildNumber : buildNumber as String,
      platform: platform == freezed ? _value.platform : platform as String,
      issuesUrl: issuesUrl == freezed ? _value.issuesUrl : issuesUrl as String,
    ));
  }
}

abstract class _$AboutModelCopyWith<$Res> implements $AboutModelCopyWith<$Res> {
  factory _$AboutModelCopyWith(
          _AboutModel value, $Res Function(_AboutModel) then) =
      __$AboutModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String version,
      String author,
      String authorEmail,
      String appName,
      String packageName,
      String buildNumber,
      String platform,
      String issuesUrl});
}

class __$AboutModelCopyWithImpl<$Res> extends _$AboutModelCopyWithImpl<$Res>
    implements _$AboutModelCopyWith<$Res> {
  __$AboutModelCopyWithImpl(
      _AboutModel _value, $Res Function(_AboutModel) _then)
      : super(_value, (v) => _then(v as _AboutModel));

  @override
  _AboutModel get _value => super._value as _AboutModel;

  @override
  $Res call({
    Object version = freezed,
    Object author = freezed,
    Object authorEmail = freezed,
    Object appName = freezed,
    Object packageName = freezed,
    Object buildNumber = freezed,
    Object platform = freezed,
    Object issuesUrl = freezed,
  }) {
    return _then(_AboutModel(
      version: version == freezed ? _value.version : version as String,
      author: author == freezed ? _value.author : author as String,
      authorEmail:
          authorEmail == freezed ? _value.authorEmail : authorEmail as String,
      appName: appName == freezed ? _value.appName : appName as String,
      packageName:
          packageName == freezed ? _value.packageName : packageName as String,
      buildNumber:
          buildNumber == freezed ? _value.buildNumber : buildNumber as String,
      platform: platform == freezed ? _value.platform : platform as String,
      issuesUrl: issuesUrl == freezed ? _value.issuesUrl : issuesUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_AboutModel extends _AboutModel {
  const _$_AboutModel(
      {@required this.version,
      @required this.author,
      @required this.authorEmail,
      @required this.appName,
      @required this.packageName,
      @required this.buildNumber,
      @required this.platform,
      @required this.issuesUrl})
      : assert(version != null),
        assert(author != null),
        assert(authorEmail != null),
        assert(appName != null),
        assert(packageName != null),
        assert(buildNumber != null),
        assert(platform != null),
        assert(issuesUrl != null),
        super._();

  factory _$_AboutModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AboutModelFromJson(json);

  @override
  final String version;
  @override
  final String author;
  @override
  final String authorEmail;
  @override
  final String appName;
  @override
  final String packageName;
  @override
  final String buildNumber;
  @override
  final String platform;
  @override
  final String issuesUrl;

  @override
  String toString() {
    return 'AboutModel(version: $version, author: $author, authorEmail: $authorEmail, appName: $appName, packageName: $packageName, buildNumber: $buildNumber, platform: $platform, issuesUrl: $issuesUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AboutModel &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.authorEmail, authorEmail) ||
                const DeepCollectionEquality()
                    .equals(other.authorEmail, authorEmail)) &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.buildNumber, buildNumber) ||
                const DeepCollectionEquality()
                    .equals(other.buildNumber, buildNumber)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.issuesUrl, issuesUrl) ||
                const DeepCollectionEquality()
                    .equals(other.issuesUrl, issuesUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(authorEmail) ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(buildNumber) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(issuesUrl);

  @override
  _$AboutModelCopyWith<_AboutModel> get copyWith =>
      __$AboutModelCopyWithImpl<_AboutModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AboutModelToJson(this);
  }
}

abstract class _AboutModel extends AboutModel {
  const _AboutModel._() : super._();
  const factory _AboutModel(
      {@required String version,
      @required String author,
      @required String authorEmail,
      @required String appName,
      @required String packageName,
      @required String buildNumber,
      @required String platform,
      @required String issuesUrl}) = _$_AboutModel;

  factory _AboutModel.fromJson(Map<String, dynamic> json) =
      _$_AboutModel.fromJson;

  @override
  String get version;
  @override
  String get author;
  @override
  String get authorEmail;
  @override
  String get appName;
  @override
  String get packageName;
  @override
  String get buildNumber;
  @override
  String get platform;
  @override
  String get issuesUrl;
  @override
  _$AboutModelCopyWith<_AboutModel> get copyWith;
}
