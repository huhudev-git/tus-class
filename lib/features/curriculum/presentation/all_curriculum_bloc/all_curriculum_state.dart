part of 'all_curriculum_bloc.dart';

@freezed
abstract class AllCurriculumState with _$AllCurriculumState {
  const factory AllCurriculumState.initial() = Initial;
  const factory AllCurriculumState.loading() = Loading;
  const factory AllCurriculumState.failed({Failure error}) = Failed;
  const factory AllCurriculumState.loaded({TimeTable timeTable}) = Loaded;
}
