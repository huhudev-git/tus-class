part of 'message_bloc.dart';

@freezed
abstract class MessageState with _$MessageState {
  const factory MessageState.initial() = Initial;
  const factory MessageState.failed({Failure error}) = Failed;
  const factory MessageState.loaded({
    List<Message> messages,
    String category,
    int categoryId,
    int page,
    bool isLoading,
    bool isLastPage,
  }) = Loaded;
}
