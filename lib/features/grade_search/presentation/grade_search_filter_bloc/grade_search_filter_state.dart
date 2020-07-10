part of 'grade_search_filter_bloc.dart';

@freezed
abstract class GradeSearchFilterState with _$GradeSearchFilterState {
  const factory GradeSearchFilterState.initial() = Initial;
  const factory GradeSearchFilterState.loading() = Loading;
  const factory GradeSearchFilterState.loaded({GradeFilter filter}) = Loaded;
  const factory GradeSearchFilterState.failed({Failure error}) = Failed;
}
