part of 'curriculum_bloc.dart';

@freezed
abstract class CurriculumState with _$CurriculumState {
  const factory CurriculumState.initial() = Initial;
  const factory CurriculumState.loading() = Loading;
  const factory CurriculumState.failed({Failure error}) = Failed;
  const factory CurriculumState.loaded({TimeTable timeTable}) = Loaded;
}
