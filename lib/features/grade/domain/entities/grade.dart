import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Grade extends Equatable {
  final String course;
  final double credit;
  final String evaluation;
  final double g;
  final double gp;
  final int year;
  final String category;

  const Grade({
    @required this.course,
    @required this.credit,
    @required this.evaluation,
    @required this.g,
    @required this.gp,
    @required this.year,
    @required this.category,
  });

  @override
  List<Object> get props => [course, credit, evaluation, g, gp, year, category];
}
