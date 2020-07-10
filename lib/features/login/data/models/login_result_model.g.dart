// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResultModel _$_$_LoginResultModelFromJson(Map json) {
  return _$_LoginResultModel(
    isAuth: json['isAuth'] as bool,
    name: json['name'] as String,
    error: json['error'] as String,
  );
}

Map<String, dynamic> _$_$_LoginResultModelToJson(
        _$_LoginResultModel instance) =>
    <String, dynamic>{
      'isAuth': instance.isAuth,
      'name': instance.name,
      'error': instance.error,
    };
