part of 'message_entry_bloc.dart';

@freezed
abstract class MessageEntryState with _$MessageEntryState {
  const factory MessageEntryState.initial() = Initial;
  const factory MessageEntryState.loading() = Loading;
  const factory MessageEntryState.loaded({bool isEntry}) = Loaded;
  const factory MessageEntryState.failed({Failure error}) = Failed;
  const factory MessageEntryState.success({bool isEntry}) = Success;
}
