part of 'message_detail_bloc.dart';

@freezed
abstract class MessageDetailEvent with _$MessageDetailEvent {
  const factory MessageDetailEvent.fetchMessageDetail({
    int categoryId,
    int index,
    String link,
  }) = FetchMessageDetail;
}
