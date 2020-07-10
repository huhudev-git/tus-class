part of 'message_bloc.dart';

@freezed
abstract class MessageEvent with _$MessageEvent {
  const factory MessageEvent.init({
    List<Message> messages,
    int categoryId,
    String category,
    bool isLastPage,
  }) = Init;
  const factory MessageEvent.fetchPage({int categoryId, int page}) = FetchPage;
  const factory MessageEvent.read({int categoryId, int index}) = Read;
}
