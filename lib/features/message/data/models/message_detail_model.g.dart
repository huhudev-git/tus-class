// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDetailModel _$_$_MessageDetailModelFromJson(Map json) {
  return _$_MessageDetailModel(
    pageId: json['pageId'] as String,
    sender: json['sender'] as String,
    title: json['title'] as String,
    content: json['content'] as String,
    files: (json['files'] as List)
        ?.map((e) => e == null
            ? null
            : MessageFileModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    isEntryable: json['isEntryable'] as bool,
    isEntry: json['isEntry'] as bool,
  );
}

Map<String, dynamic> _$_$_MessageDetailModelToJson(
        _$_MessageDetailModel instance) =>
    <String, dynamic>{
      'pageId': instance.pageId,
      'sender': instance.sender,
      'title': instance.title,
      'content': instance.content,
      'files': instance.files?.map((e) => e?.toJson())?.toList(),
      'isEntryable': instance.isEntryable,
      'isEntry': instance.isEntry,
    };
