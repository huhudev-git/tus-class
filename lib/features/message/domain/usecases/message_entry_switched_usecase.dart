import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/message_repository.dart';

@injectable
class MessageEntrySwitchedUsecase implements UseCase<bool, Params> {
  final MessageRepository repository;

  MessageEntrySwitchedUsecase(this.repository);
  @override
  Future<Either<Failure, bool>> call(Params params) async {
    return repository.switchEntryState(params.pageId, params.state);
  }
}

class Params extends Equatable {
  final String pageId;
  final bool state;

  const Params({
    @required this.pageId,
    @required this.state,
  });

  @override
  List<Object> get props => [pageId, state];
}
