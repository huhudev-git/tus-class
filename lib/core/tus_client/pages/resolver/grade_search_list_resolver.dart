import 'package:html_unescape/html_unescape.dart';

import '../../../errors/exceptions.dart';

mixin GradeSearchListResolver {
  List<Map<String, dynamic>> resolveGradeSearchList(String content, {int page = 0}) {
    // 検索結果が1000件を超えています。条件を絞り込んでください。 unexcept long time
    // 科目名称・教員氏名・学科組織・曜日時限のいずれかを選択してください。
    // 検索条件に合うデータは存在しません。
    final err = RegExp(r'<img src="/up/image/err\.gif"><span class="firstErr">([\S\s]+?)</span>', caseSensitive: false).firstMatch(content);
    if (err != null) {
      final error = err.group(1);
      if (error.contains('1000件')) {
        throw TooManyResultException();
      } else if (error.contains('存在しません')) {
        throw NoneResultException();
      } else {
        throw TUSUnexceptedException();
      }
    }

    final result = extractGrades(content, page);
    return result;
  }

  List<Map<String, dynamic>> extractGrades(String content, int page) {
    final unescape = HtmlUnescape();
    final matchs = RegExp(r'<tr class="rowClass1">([\S\s]+?)</tr>', caseSensitive: false).allMatches(content);

    final List<Map<String, dynamic>> datas = [];
    for (final match in matchs) {
      final hasDetail = RegExp(r'form1:htmlKekkatable:\d+:edit', caseSensitive: false).hasMatch(match.group(0));
      final _content = match.group(0).replaceAll(RegExp(r'[\t\r\n]'), '');
      final _matchs = RegExp(r'<span.+?>([\S\s]*?)</span>', caseSensitive: false).allMatches(_content).toList();

      //_matchs.forEach((b) => print('${_matchs.indexOf(b)} ${b.group(1)}'));
      if (_matchs.length != 13) continue;
      if (_matchs[4].group(1).isEmpty) continue;

      int day = 0;
      List<int> periods = [];
      final dayPeriod = _matchs[5].group(1).replaceAll(RegExp('<.*>'), '');
      if (dayPeriod.isNotEmpty) {
        periods = dayPeriod.split(' ').map((e) => int.parse(e[1])).toList();
        day = _youbi2Int(dayPeriod[0]);
      }

      final data = {
        'subject': _matchs[0].group(1),
        'year': int.parse(RegExp(r'\d+').stringMatch(_matchs[1].group(1))),
        'semester': RegExp(r'[^\d]+').stringMatch(_matchs[1].group(1)).replaceAll(RegExp('<.*>'), ''),
        'code': _matchs[2].group(1),
        'course': unescape.convert(_matchs[4].group(1)),
        // 集中講義 == ''
        "day": day,
        "periods": periods,
        'teacher': unescape.convert(_matchs[6].group(1)),
        'people': int.parse(_matchs[7].group(1)),
        's': double.parse(_matchs[8].group(1)),
        'a': double.parse(_matchs[9].group(1)),
        'b': double.parse(_matchs[10].group(1)),
        'c': double.parse(_matchs[11].group(1)),
        'd': double.parse(_matchs[12].group(1)),
        'page': page,
        'hasDetail': hasDetail,
      };
      datas.add(data);
    }
    return datas;
  }

  int _youbi2Int(String day) {
    return {
      '月': 0,
      '火': 1,
      '水': 2,
      '木': 3,
      '金': 4,
      '土': 5,
      '日': 6,
    }[day];
  }
}
