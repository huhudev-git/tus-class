part of 'grade_search_bloc.dart';

@freezed
abstract class GradeSearchEvent with _$GradeSearchEvent {
  const factory GradeSearchEvent.init() = Init;
  const factory GradeSearchEvent.search({String key, String year, String semester, String subject, String grade, String day, String period, bool isMyself, bool isIntensive, bool teacher}) = Search;
  const factory GradeSearchEvent.fetchPage({int page}) = FetchPage;
}
