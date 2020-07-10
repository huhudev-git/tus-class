import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'grade.dart';

class FetchGradeResult extends Equatable {
  final List<Grade> grades;
  final bool isLastPage;

  const FetchGradeResult({
    @required this.grades,
    @required this.isLastPage,
  });

  @override
  List<Object> get props => [grades, isLastPage];
}
