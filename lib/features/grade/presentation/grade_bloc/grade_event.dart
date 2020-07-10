part of 'grade_bloc.dart';

@freezed
abstract class GradeEvent with _$GradeEvent {
  const factory GradeEvent.fetchGrade() = FetchGrade;
}
