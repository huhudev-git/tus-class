import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/fetch_message_result.dart';
import '../../domain/entities/message_detail.dart';
import '../../domain/repositories/message_repository.dart';
import '../datasources/message_data_source.dart';

@Injectable(as: MessageRepository)
class MessageRepositoryImpl implements MessageRepository {
  final MessageDataSource dataSource;

  MessageRepositoryImpl({
    @required this.dataSource,
  });

  @override
  Future<Either<Failure, List<Category>>> fetchCategories() async {
    try {
      final messagesList = await dataSource.fetchCategories();
      return Right(messagesList.map((e) => e.toDomain()).toList());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, MessageDetail>> fetchMessage(int categoryId, int index, String link) async {
    try {
      final message = await dataSource.fetchMessage(categoryId, index, link);
      return Right(message.toDomain());
    } on TUSEmptyMessageException {
      return Left(TUSEmptyMessageFailure());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, FetchMessageResult>> fetchPage(int categoryId, int page) async {
    try {
      final messages = await dataSource.fetchPage(categoryId, page);
      return Right(messages.toDomain());
    } on TUSFetchDataException {
      return Left(TUSFetchDataFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> switchEntryState(String pageId, bool state) async {
    try {
      final result = await dataSource.switchEntryState(pageId, state);
      return result ? Right(result) : Left(MessageEntryFailure());
    } on TUSSessionOutException {
      return Left(TUSSessionOutFailure());
    } on TUSNULLPageIdException {
      return Left(TUSNULLPageIdFailure());
    } on DioError {
      return Left(ServerFailure());
    }
  }
}
