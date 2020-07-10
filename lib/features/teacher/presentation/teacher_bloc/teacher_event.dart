part of 'teacher_bloc.dart';

@freezed
abstract class TeacherEvent with _$TeacherEvent {
  const factory TeacherEvent.fetchTeacher({String teacherId, String code, int year}) = FetchTeacher;
}
