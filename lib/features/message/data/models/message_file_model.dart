import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/message_file.dart';

part 'message_file_model.freezed.dart';
part 'message_file_model.g.dart';

@freezed
abstract class MessageFileModel implements _$MessageFileModel {
  const factory MessageFileModel({
    @required int index,
    @required String filename,
    @required int size,
  }) = _MessageFileModel;
  const MessageFileModel._();

  MessageFile toDomain() {
    return MessageFile(
      index: index,
      filename: filename,
      size: size,
    );
  }

  factory MessageFileModel.fromJson(Map<String, dynamic> json) => _$MessageFileModelFromJson(json);
}
