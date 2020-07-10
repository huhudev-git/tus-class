// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$_$_MessageModelFromJson(Map json) {
  return _$_MessageModel(
    index: json['index'] as int,
    title: json['title'] as String,
    category: json['category'] as String,
    date: json['date'] as String,
    from: json['from'] as String,
    link: json['link'] as String,
    isRead: json['isRead'] as bool,
    isImportant: json['isImportant'] as bool,
    isNew: json['isNew'] as bool,
  );
}

Map<String, dynamic> _$_$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'title': instance.title,
      'category': instance.category,
      'date': instance.date,
      'from': instance.from,
      'link': instance.link,
      'isRead': instance.isRead,
      'isImportant': instance.isImportant,
      'isNew': instance.isNew,
    };
