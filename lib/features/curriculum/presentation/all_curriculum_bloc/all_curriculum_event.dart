part of 'all_curriculum_bloc.dart';

@freezed
abstract class AllCurriculumEvent with _$AllCurriculumEvent {
  const factory AllCurriculumEvent.fetchAllCurriculum({bool isRefresh}) = FetchAllCurriculum;
}
