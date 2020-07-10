import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'message.dart';

class Category extends Equatable {
  final int index;
  final List<Message> messages;
  final String category;
  final int page;
  final bool isLastPage;

  const Category({
    @required this.index,
    @required this.messages,
    @required this.category,
    @required this.page,
    @required this.isLastPage,
  });

  @override
  List<Object> get props => [index, messages, category, page, isLastPage];
}
