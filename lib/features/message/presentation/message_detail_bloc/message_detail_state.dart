part of 'message_detail_bloc.dart';

@freezed
abstract class MessageDetailState with _$MessageDetailState {
  const factory MessageDetailState.initial() = Initial;
  const factory MessageDetailState.loading({int index}) = Loading;
  const factory MessageDetailState.failed({Failure error}) = Failed;
  const factory MessageDetailState.loaded({MessageDetail detail}) = Loaded;
}
