part of 'message_entry_bloc.dart';

@freezed
abstract class MessageEntryEvent with _$MessageEntryEvent {
  const factory MessageEntryEvent.init({bool isEntry}) = Init;
  const factory MessageEntryEvent.entrySwitch({String pageId, bool isEntry}) = MessageEntrySwitch;
}
