import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/category.dart';
import '../../domain/usecases/fetch_category_usecase.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final FetchCategoryUsecase _fetchCategoryUsecase;

  CategoryBloc({
    @required FetchCategoryUsecase fetchCategoryUsecase,
  })  : assert(fetchCategoryUsecase != null),
        _fetchCategoryUsecase = fetchCategoryUsecase,
        super(CategoryState.initial());

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    yield* _mapFetchCategoryEvent(event as FetchCategory);
  }

  Stream<CategoryState> _mapFetchCategoryEvent(FetchCategory event) async* {
    yield const CategoryState.loading();
    final failureOrCategories = await _fetchCategoryUsecase(NoParams());
    yield failureOrCategories.fold(
      (failure) => CategoryState.failed(error: failure),
      (categories) => CategoryState.loaded(categories: categories),
    );
  }
}
