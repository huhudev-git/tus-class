import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/usecases/message_entry_switched_usecase.dart' as messu;

part 'message_entry_bloc.freezed.dart';
part 'message_entry_event.dart';
part 'message_entry_state.dart';

@injectable
class MessageEntryBloc extends Bloc<MessageEntryEvent, MessageEntryState> {
  final messu.MessageEntrySwitchedUsecase _messageEntrySwitchedUsecase;

  MessageEntryBloc({
    @required messu.MessageEntrySwitchedUsecase messageEntrySwitchedUsecase,
  })  : assert(messageEntrySwitchedUsecase != null),
        _messageEntrySwitchedUsecase = messageEntrySwitchedUsecase;

  @override
  MessageEntryState get initialState => const MessageEntryState.initial();

  @override
  Stream<MessageEntryState> mapEventToState(
    MessageEntryEvent event,
  ) async* {
    yield* event.map(
      init: _mapMessageEntryInitialEvent,
      entrySwitch: _mapMessageEntrySwitchedEvent,
    );
  }

  Stream<MessageEntryState> _mapMessageEntryInitialEvent(Init event) async* {
    yield MessageEntryState.loaded(isEntry: event.isEntry);
  }

  Stream<MessageEntryState> _mapMessageEntrySwitchedEvent(MessageEntrySwitch event) async* {
    yield const MessageEntryState.loading();
    final failureOrResult = await _messageEntrySwitchedUsecase(
      messu.Params(pageId: event.pageId, state: event.isEntry),
    );

    yield failureOrResult.fold(
      (failure) => MessageEntryState.failed(error: failure),
      (result) => MessageEntryState.success(isEntry: !event.isEntry),
    );
  }
}
