part of 'category_bloc.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = Initial;
  const factory CategoryState.loading() = Loading;
  const factory CategoryState.loaded({List<Category> categories}) = Loaded;
  const factory CategoryState.failed({Failure error}) = Failed;
}
