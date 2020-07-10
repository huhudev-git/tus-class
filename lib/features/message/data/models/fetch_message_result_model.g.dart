// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_message_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchMessageResultModel _$_$_FetchMessageResultModelFromJson(Map json) {
  return _$_FetchMessageResultModel(
    messages: (json['messages'] as List)
        ?.map((e) => e == null
            ? null
            : MessageModel.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    isLastPage: json['isLastPage'] as bool,
  );
}

Map<String, dynamic> _$_$_FetchMessageResultModelToJson(
        _$_FetchMessageResultModel instance) =>
    <String, dynamic>{
      'messages': instance.messages?.map((e) => e?.toJson())?.toList(),
      'isLastPage': instance.isLastPage,
    };
