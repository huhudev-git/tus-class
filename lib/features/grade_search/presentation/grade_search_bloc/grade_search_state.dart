part of 'grade_search_bloc.dart';

@freezed
abstract class GradeSearchState with _$GradeSearchState {
  const factory GradeSearchState.initial() = Initial;
  const factory GradeSearchState.loading() = Loading;
  const factory GradeSearchState.loaded({
    List<Grade> grades,
    bool isLastPage,
    bool isLoading,
    int page,
  }) = Loaded;
  const factory GradeSearchState.failed({Failure error}) = Failed;
}
