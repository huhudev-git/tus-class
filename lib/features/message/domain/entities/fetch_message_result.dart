import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'message.dart';

class FetchMessageResult extends Equatable {
  final List<Message> messages;
  final bool isLastPage;

  const FetchMessageResult({
    @required this.messages,
    @required this.isLastPage,
  });

  @override
  List<Object> get props => [messages, isLastPage];
}
