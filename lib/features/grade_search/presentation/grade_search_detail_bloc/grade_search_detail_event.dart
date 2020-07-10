part of 'grade_search_detail_bloc.dart';

@freezed
abstract class GradeSearchDetailEvent with _$GradeSearchDetailEvent {
  const factory GradeSearchDetailEvent.fetchGradeSearchDetail({int year, String code, int page, int index}) = FetchGradeSearchDetail;
}
