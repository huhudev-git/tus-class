import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'syllabus.dart';

class FetchSyllabusResult extends Equatable {
  final List<Syllabus> syllabusList;
  final bool isLastPage;

  const FetchSyllabusResult({
    @required this.syllabusList,
    @required this.isLastPage,
  });

  @override
  List<Object> get props => [syllabusList, isLastPage];
}
