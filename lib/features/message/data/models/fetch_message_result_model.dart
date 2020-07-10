import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/fetch_message_result.dart';
import 'message_model.dart';

part 'fetch_message_result_model.freezed.dart';
part 'fetch_message_result_model.g.dart';

@freezed
abstract class FetchMessageResultModel implements _$FetchMessageResultModel {
  const factory FetchMessageResultModel({
    @required List<MessageModel> messages,
    @required bool isLastPage,
  }) = _FetchMessageResultModel;
  const FetchMessageResultModel._();

  FetchMessageResult toDomain() {
    return FetchMessageResult(
      messages: messages.map((e) => e.toDomain()).toList(),
      isLastPage: isLastPage,
    );
  }

  factory FetchMessageResultModel.fromJson(Map<String, dynamic> json) => _$FetchMessageResultModelFromJson(json);
}
