import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/message.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
abstract class MessageModel implements _$MessageModel {
  const factory MessageModel({
    @required int index,
    @required String title,
    @required String category,
    @required String date,
    @required String from,
    @required String link,
    @required bool isRead,
    @required bool isImportant,
    @required bool isNew,
  }) = _MessageModel;
  const MessageModel._();

  Message toDomain() {
    return Message(
      index: index,
      title: title,
      category: category,
      date: date,
      from: from,
      link: link,
      isRead: isRead,
      isImportant: isImportant,
      isNew: isNew,
    );
  }

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);
}
