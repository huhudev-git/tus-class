import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/message_detail.dart';
import '../repositories/message_repository.dart';

@injectable
class FetchMessageUsecase implements UseCase<MessageDetail, Params> {
  final MessageRepository repository;

  FetchMessageUsecase(this.repository);
  @override
  Future<Either<Failure, MessageDetail>> call(Params params) async {
    return repository.fetchMessage(params.categoryId, params.index, params.link);
  }
}

class Params extends Equatable {
  final int categoryId;
  final int index;
  final String link;

  const Params({
    @required this.categoryId,
    @required this.index,
    @required this.link,
  });

  @override
  List<Object> get props => [categoryId, index, link];
}
