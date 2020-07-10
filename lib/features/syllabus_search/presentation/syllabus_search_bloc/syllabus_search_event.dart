part of 'syllabus_search_bloc.dart';

@freezed
abstract class SyllabusSearchEvent with _$SyllabusSearchEvent {
  const factory SyllabusSearchEvent.init() = Init;
  const factory SyllabusSearchEvent.search({String key, String year, String semester, String category, String subject, String grade, String day, String period, bool isIntensive, bool teacher}) = Search;
  const factory SyllabusSearchEvent.fetchPage({int page}) = FetchPage;
}
