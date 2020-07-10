import 'package:tus_class/features/grade/domain/entities/grade.dart';

bool isCoursePassed(Grade g) {
  return g.evaluation != 'Ｄ' && g.evaluation != '－' && g.evaluation != 'Ｆ';
}

String full2half(String text) {
  final full = ['Ｓ', 'Ａ', 'Ｂ', 'Ｃ', 'Ｄ', 'Ｇ', 'Ｎ', 'Ｍ', 'Ｆ', '－'];
  final half = ['S', 'A', 'B', 'C', 'D', 'G', 'N', 'M', 'F', '-'];
  final index = full.indexOf(text);
  final result = half[index != -1 ? index : 9];
  return result;
}

Map<String, int> getEvaluation2IntConverter(List<String> evaluations) {
  final grade2Int = {'Ｓ': 0, 'Ａ': 1, 'Ｂ': 2, 'Ｃ': 3, 'Ｄ': 4, 'Ｇ': 5, 'Ｎ': 6, 'Ｍ': 7, 'Ｆ': 8, '－': 9};
  evaluations.sort((e1, e2) => grade2Int[e1].compareTo(grade2Int[e2]));
  final Map<String, int> evaluation2Int = {};
  for (var i = 0; i < evaluations.length; i++) {
    evaluation2Int[evaluations[i]] = i;
  }
  return evaluation2Int;
}

Map<String, int> getEvaluationLength(List<Grade> grades) {
  final Map<String, int> result = {'Ｓ': 0, 'Ａ': 0, 'Ｂ': 0, 'Ｃ': 0, 'Ｄ': 0, 'Ｇ': 0, 'Ｎ': 0, 'Ｍ': 0, 'Ｆ': 0, '－': 0};

  for (final grade in grades) {
    if (result.containsKey(grade.evaluation)) {
      result[grade.evaluation]++;
    }
  }

  return result;
}
