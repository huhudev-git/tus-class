mixin AttendanceRateResolver {
  List<Map<String, dynamic>> resolveAttendanceRate(String content) {
    // No data
    final err = RegExp(r'<span class="firstErr">([\S\s]+?)</span>', caseSensitive: false).firstMatch(content);
    if (err != null) {
      return [];
    }

    final List<Map<String, dynamic>> result = [];
    final matchs = RegExp(r'<td class=jugyoCd>([\S\s]+?)</td>[\s\S]+?title="([\s\S]+?)">[\s\S]+?<td class=ritu>(.+?)</td>', caseSensitive: false).allMatches(content);
    for (final match in matchs) {
      String course = match.group(2).replaceAll(RegExp('<br>', caseSensitive: false), '').replaceAll(RegExp('&nbsp;', caseSensitive: false), '').replaceAll(RegExp(r'[　 \r\t]', caseSensitive: false), '');

      for (int i = (course.length / 2).floor(); i > 0; i--) {
        if (course.substring(0, i) == course.substring(i, 2 * i)) {
          course = course.substring(i, 2 * i);
          break;
        }
      }

      final rate = match.group(3).replaceAll(RegExp(r'[^\d]'), '');

      result.add({
        'code': match.group(1),
        'rate': rate.isNotEmpty ? int.tryParse(rate) : -1,
        'course': course,
      });
    }
    return result;
  }
}
