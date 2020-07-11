import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/message.dart';
import '../../domain/usecases/fetch_page_usecase.dart' as fpu;

part 'message_bloc.freezed.dart';
part 'message_event.dart';
part 'message_state.dart';

@injectable
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final fpu.FetchPageUsecase _fetchPageUsecase;

  MessageBloc({
    @required fpu.FetchPageUsecase fetchPageUsecase,
  })  : assert(fetchPageUsecase != null),
        _fetchPageUsecase = fetchPageUsecase,
        super(MessageState.initial());

  @override
  Stream<MessageState> mapEventToState(
    MessageEvent event,
  ) async* {
    yield* event.map(
      init: _mapInitEvent,
      fetchPage: _mapFetchNextPageEvent,
      read: _mapReadEvent,
    );
  }

  Stream<MessageState> _mapInitEvent(Init event) async* {
    yield MessageState.loaded(
      messages: event.messages,
      category: event.category,
      categoryId: event.categoryId,
      isLastPage: event.isLastPage,
      isLoading: false,
      page: -1,
    );
  }

  Stream<MessageState> _mapFetchNextPageEvent(FetchPage event) async* {
    yield* state.maybeMap(
      loaded: (state) async* {
        yield state.copyWith(isLoading: true);

        final failureOrMessages = await _fetchPageUsecase(
          fpu.Params(
            categoryId: event.categoryId,
            page: event.page + 1,
          ),
        );

        yield* failureOrMessages.fold(
          (failure) async* {
            yield MessageState.failed(error: failure);
          },
          (fetchMessageResult) async* {
            yield state.copyWith(
              messages: event.page == -1 ? fetchMessageResult.messages : state.messages + fetchMessageResult.messages,
              isLastPage: fetchMessageResult.isLastPage,
              isLoading: false,
              page: event.page + 1,
            );
          },
        );
      },
      orElse: () async* {},
    );
  }

  Stream<MessageState> _mapReadEvent(Read event) async* {
    yield* state.maybeMap(
      loaded: (state) async* {
        // change equality
        final message = state.messages[event.index].copyWith(isRead: true);
        final messages = state.messages.map((e) => e).toList();
        messages[event.index] = message;

        final newState = state.copyWith(
          messages: messages,
        );

        yield newState;
      },
      orElse: () async* {},
    );
  }
}
