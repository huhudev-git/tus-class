import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class SyllabusFilter extends Equatable {
  final List<String> htmlNendo;
  final Map<String, String> htmlJigen;
  final Map<String, String> htmlYobi;
  final Map<String, String> htmlGakunen;
  final Map<String, String> htmlGakkiNo;
  final Map<String, String> htmlKamokJugyo;
  final Map<String, String> htmlGakka;

  const SyllabusFilter({
    @required this.htmlNendo,
    @required this.htmlJigen,
    @required this.htmlYobi,
    @required this.htmlGakunen,
    @required this.htmlGakkiNo,
    @required this.htmlKamokJugyo,
    @required this.htmlGakka,
  });

  @override
  List<Object> get props => [htmlNendo, htmlJigen, htmlYobi, htmlGakunen, htmlGakkiNo, htmlKamokJugyo, htmlGakka];
}
