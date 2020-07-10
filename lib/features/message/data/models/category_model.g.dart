// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$_$_CategoryModelFromJson(Map json) {
  return _$_CategoryModel(
    index: json['index'] as int,
    messages: (json['messages'] as List)
        ?.map((e) => e == null
            ? null
            : MessageModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    category: json['category'] as String,
    page: json['page'] as int,
    isLastPage: json['isLastPage'] as bool,
  );
}

Map<String, dynamic> _$_$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'messages': instance.messages?.map((e) => e?.toJson())?.toList(),
      'category': instance.category,
      'page': instance.page,
      'isLastPage': instance.isLastPage,
    };
