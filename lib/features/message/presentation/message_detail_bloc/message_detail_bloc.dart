import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/message_detail.dart';
import '../../domain/usecases/fetch_message_usecase.dart' as fmu;

part 'message_detail_bloc.freezed.dart';
part 'message_detail_event.dart';
part 'message_detail_state.dart';

@injectable
class MessageDetailBloc extends Bloc<MessageDetailEvent, MessageDetailState> {
  final fmu.FetchMessageUsecase _fetchMessageUsecase;

  MessageDetailBloc({
    @required fmu.FetchMessageUsecase fetchMessageUsecase,
  })  : assert(fetchMessageUsecase != null),
        _fetchMessageUsecase = fetchMessageUsecase,
        super(MessageDetailState.initial());

  @override
  Stream<MessageDetailState> mapEventToState(
    MessageDetailEvent event,
  ) async* {
    yield* _mapFetchMessageDetailEvent(event as FetchMessageDetail);
  }

  Stream<MessageDetailState> _mapFetchMessageDetailEvent(FetchMessageDetail event) async* {
    yield MessageDetailState.loading(index: event.index);
    final failureOrMessagesDetail = await _fetchMessageUsecase(
      fmu.Params(
        categoryId: event.categoryId,
        index: event.index,
        link: event.link,
      ),
    );

    yield failureOrMessagesDetail.fold(
      (failure) => MessageDetailState.failed(error: failure),
      (messagesDetail) => MessageDetailState.loaded(detail: messagesDetail),
    );
  }
}
