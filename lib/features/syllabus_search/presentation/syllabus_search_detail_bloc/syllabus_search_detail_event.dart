part of 'syllabus_search_detail_bloc.dart';

@freezed
abstract class SyllabusSearchDetailEvent with _$SyllabusSearchDetailEvent {
  const factory SyllabusSearchDetailEvent.fetchSyllabusSearchDetail({int index, int page, int year}) = FetchSyllabusSearchDetail;
  const factory SyllabusSearchDetailEvent.back({int year, String code}) = Back;
}
