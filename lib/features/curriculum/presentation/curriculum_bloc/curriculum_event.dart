part of 'curriculum_bloc.dart';

@freezed
abstract class CurriculumEvent with _$CurriculumEvent {
  const factory CurriculumEvent.fetchCurriculum({int year, String semesterValue, bool isRefresh}) = FetchCurriculum;
}
