// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeacherModel _$_$_TeacherModelFromJson(Map json) {
  return _$_TeacherModel(
    position: json['position'] as String,
    location: json['location'] as String,
    workTime: json['workTime'] as String,
    url: json['url'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_TeacherModelToJson(_$_TeacherModel instance) =>
    <String, dynamic>{
      'position': instance.position,
      'location': instance.location,
      'workTime': instance.workTime,
      'url': instance.url,
      'email': instance.email,
      'name': instance.name,
    };
