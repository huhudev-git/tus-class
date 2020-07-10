part of 'grade_search_detail_bloc.dart';

@freezed
abstract class GradeSearchDetailState with _$GradeSearchDetailState {
  const factory GradeSearchDetailState.initial() = Initial;
  const factory GradeSearchDetailState.loading() = Loading;
  const factory GradeSearchDetailState.loaded({GradeDetail detail}) = Loaded;
  const factory GradeSearchDetailState.failed({Failure error}) = Failed;
}
