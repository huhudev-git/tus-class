part of 'grade_bloc.dart';

@freezed
abstract class GradeState with _$GradeState {
  const factory GradeState.initial() = Initial;
  const factory GradeState.loading() = Loading;
  const factory GradeState.failed({Failure error}) = Failed;
  const factory GradeState.loaded({List<Grade> grades}) = Loaded;
}
