import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/category.dart';
import '../entities/fetch_message_result.dart';
import '../entities/message_detail.dart';

abstract class MessageRepository {
  Future<Either<Failure, List<Category>>> fetchCategories();
  Future<Either<Failure, FetchMessageResult>> fetchPage(int categoryId, int page);
  Future<Either<Failure, MessageDetail>> fetchMessage(int categoryId, int index, String link);
  Future<Either<Failure, bool>> switchEntryState(String pageId, bool state);
}
