import 'package:html_unescape/html_unescape.dart';

import '../../../errors/exceptions.dart';

mixin SyllabusSearchListResolver {
  List<Map<String, dynamic>> resolveSyllabusSearchList(String content, {int page = 0}) {
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

    final result = extractSyllabus(content, page);
    return result;
  }

  List<Map<String, dynamic>> extractSyllabus(String content, int page) {
    final unescape = HtmlUnescape();
    final matchs = RegExp(r'<tr class="rowClass1">([\S\s]+?)</tr>', caseSensitive: false).allMatches(content);

    final List<Map<String, dynamic>> datas = [];
    for (final match in matchs) {
      final _content = match.group(0).replaceAll(RegExp(r'[\t\r\n]'), '');
      final _matchs = RegExp(r'<span.+?>([\S\s]*?)</span>', caseSensitive: false).allMatches(_content).toList();

      if (_matchs.length != 7) continue;
      if (_matchs[3].group(1).isEmpty) continue;

      String course = unescape.convert(_matchs[4].group(1).split("&#12288;")[1]);

      for (int i = (course.length / 2).floor(); i > 0; i--) {
        if (course.substring(0, i) == course.substring(i, 2 * i)) {
          course = course.substring(i, 2 * i);
          break;
        }
      }

      int day;
      List<int> periods = [];
      final dayPeriod = _matchs[2].group(1).replaceAll(RegExp('<BR>', caseSensitive: false), '');
      if (dayPeriod.isNotEmpty) {
        periods = dayPeriod.split(' ').map((e) => int.parse(e[1])).toList();
        day = _youbi2Int(dayPeriod[0]);
      }

      final data = {
        "course": course,
        "subject": _matchs[0].group(1),
        "semester": RegExp(r'[^\d]+').stringMatch(_matchs[1].group(1)).replaceAll(RegExp('<.*>'), ''), // not all
        "code": _matchs[4].group(1).split("&#12288;")[0],
        "day": day,
        "periods": periods,
        "teacher": _matchs[5].group(1),
        "type": _matchs[6].group(1).replaceAll(RegExp('<BR>', caseSensitive: false), ''),
        "year": int.parse(RegExp(r'\d+').stringMatch(_matchs[1].group(1))), // not all
        "page": page,
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
