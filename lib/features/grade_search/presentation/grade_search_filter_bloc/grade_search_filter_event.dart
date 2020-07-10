part of 'grade_search_filter_bloc.dart';

@freezed
abstract class GradeSearchFilterEvent with _$GradeSearchFilterEvent {
  const factory GradeSearchFilterEvent.fetchGradeSearchFilter() = FetchGradeSearchFilter;
}
