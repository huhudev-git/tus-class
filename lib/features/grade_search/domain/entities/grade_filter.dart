import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class GradeFilter extends Equatable {
  final List<String> htmlNendo;
  final Map<String, dynamic> htmlJigen;
  final Map<String, dynamic> htmlYobi;
  final Map<String, dynamic> htmlGakunen;
  final Map<String, dynamic> htmlGakkiNo;
  final Map<String, dynamic> htmlGakka;

  const GradeFilter({
    @required this.htmlNendo,
    @required this.htmlJigen,
    @required this.htmlYobi,
    @required this.htmlGakunen,
    @required this.htmlGakkiNo,
    @required this.htmlGakka,
  });

  @override
  List<Object> get props => [
        htmlNendo,
        htmlJigen,
        htmlYobi,
        htmlGakunen,
        htmlGakkiNo,
        htmlGakka,
      ];
}
