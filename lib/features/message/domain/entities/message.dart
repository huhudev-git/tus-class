import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Message extends Equatable {
  final int index;
  final String title;
  final String category;
  final String date;
  final String from;
  final String link;
  final bool isRead;
  final bool isImportant;
  final bool isNew;

  const Message({
    @required this.index,
    @required this.title,
    @required this.category,
    @required this.date,
    @required this.from,
    @required this.link,
    @required this.isRead,
    @required this.isImportant,
    @required this.isNew,
  });

  @override
  List<Object> get props => [
        index,
        title,
        category,
        date,
        from,
        link,
        isRead,
        isImportant,
        isNew,
      ];

  Message copyWith({
    int index,
    String title,
    String category,
    String date,
    String from,
    String link,
    bool isRead,
    bool isImportant,
    bool isNew,
  }) {
    return Message(
      index: index ?? this.index,
      title: title ?? this.title,
      category: category ?? this.category,
      date: date ?? this.date,
      from: from ?? this.from,
      link: link ?? this.link,
      isRead: isRead ?? this.isRead,
      isImportant: isImportant ?? this.isImportant,
      isNew: isNew ?? this.isNew,
    );
  }
}
