import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/fetch_message_result.dart';
import '../repositories/message_repository.dart';

@injectable
class FetchPageUsecase implements UseCase<FetchMessageResult, Params> {
  final MessageRepository repository;

  FetchPageUsecase(this.repository);
  @override
  Future<Either<Failure, FetchMessageResult>> call(Params params) async {
    return repository.fetchPage(params.categoryId, params.page);
  }
}

class Params extends Equatable {
  final int categoryId;
  final int page;

  const Params({
    @required this.categoryId,
    @required this.page,
  });

  @override
  List<Object> get props => [categoryId, page];
}
