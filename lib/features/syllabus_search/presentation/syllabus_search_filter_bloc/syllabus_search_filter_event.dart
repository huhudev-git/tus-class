part of 'syllabus_search_filter_bloc.dart';

@freezed
abstract class SyllabusSearchFilterEvent with _$SyllabusSearchFilterEvent {
  const factory SyllabusSearchFilterEvent.fetchFilter() = FetchFilter;
}
