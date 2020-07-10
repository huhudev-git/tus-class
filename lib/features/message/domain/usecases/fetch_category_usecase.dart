import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/category.dart';
import '../repositories/message_repository.dart';

@injectable
class FetchCategoryUsecase implements UseCase<List<Category>, NoParams> {
  final MessageRepository repository;

  FetchCategoryUsecase(this.repository);

  @override
  Future<Either<Failure, List<Category>>> call(NoParams params) async {
    return repository.fetchCategories();
  }
}
