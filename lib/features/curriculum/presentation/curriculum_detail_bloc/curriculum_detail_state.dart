part of 'curriculum_detail_bloc.dart';

@freezed
abstract class CurriculumDetailState with _$CurriculumDetailState {
  const factory CurriculumDetailState.initial() = Initial;
  const factory CurriculumDetailState.loading() = Loading;
  const factory CurriculumDetailState.failed({Failure error}) = Failed;
  const factory CurriculumDetailState.loaded({List<CurriculumDetail> details}) = Loaded;
}
