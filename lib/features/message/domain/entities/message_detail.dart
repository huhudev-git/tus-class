import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'message_file.dart';

class MessageDetail extends Equatable {
  final String pageId;
  final String title;
  final String sender;
  final String content;
  final List<MessageFile> files;
  final bool isEntryable;
  final bool isEntry;

  const MessageDetail({
    @required this.pageId,
    @required this.title,
    @required this.sender,
    @required this.content,
    @required this.files,
    @required this.isEntryable,
    @required this.isEntry,
  });

  @override
  List<Object> get props => [
        pageId,
        title,
        sender,
        content,
        files,
        isEntryable,
        isEntry,
      ];
}
