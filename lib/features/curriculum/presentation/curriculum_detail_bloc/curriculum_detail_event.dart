part of 'curriculum_detail_bloc.dart';

@freezed
abstract class CurriculumDetailEvent with _$CurriculumDetailEvent {
  const factory CurriculumDetailEvent.clearCurriculumDetail() = ClearCurriculumDetail;
  const factory CurriculumDetailEvent.fetchCurriculumDetail({List<Curriculum> curriculums}) = FetchCurriculumDetail;
  const factory CurriculumDetailEvent.deleteCurriculumDetail() = DeleteCurriculumDetail;
}
