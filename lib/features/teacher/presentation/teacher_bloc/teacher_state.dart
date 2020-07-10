part of 'teacher_bloc.dart';

@freezed
abstract class TeacherState with _$TeacherState {
  const factory TeacherState.initial() = Initial;
  const factory TeacherState.loading() = Loading;
  const factory TeacherState.loaded({Teacher teacher}) = Loaded;
  const factory TeacherState.failed({Failure error}) = Failed;
}
