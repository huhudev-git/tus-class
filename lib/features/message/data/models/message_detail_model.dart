import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/message_detail.dart';
import 'message_file_model.dart';

part 'message_detail_model.freezed.dart';
part 'message_detail_model.g.dart';

@freezed
abstract class MessageDetailModel implements _$MessageDetailModel {
  const factory MessageDetailModel({
    @required String pageId,
    @required String sender,
    @required String title,
    @required String content,
    @required List<MessageFileModel> files,
    @required bool isEntryable,
    @required bool isEntry,
  }) = _MessageDetailModel;
  const MessageDetailModel._();

  MessageDetail toDomain() {
    return MessageDetail(
      pageId: pageId,
      title: title,
      sender: sender,
      content: content,
      files: files.map((e) => e.toDomain()).toList(),
      isEntryable: isEntryable,
      isEntry: isEntry,
    );
  }

  factory MessageDetailModel.fromJson(Map<String, dynamic> json) => _$MessageDetailModelFromJson(json);
}
