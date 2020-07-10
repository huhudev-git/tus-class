import 'package:html_unescape/html_unescape.dart';

mixin AllCurriculumResolver {
  Map<String, dynamic> resolveCurriculum(String content) {
    final unescape = HtmlUnescape();

    // year semester
    final yearSemester = RegExp(r'<span id="form1:labelOutLabel\d" class="outputText">(\d\d\d\d)([\S\s]+?)</span>', caseSensitive: false).firstMatch(content);
    final year = int.parse(yearSemester.group(1));
    final semester = unescape.convert(yearSemester.group(2)).split('　').last;

    // No data
    final err = RegExp(r'<span class="firstErr">([\S\s]+?)</span>', caseSensitive: false).firstMatch(content);
    if (err != null) {
      return {
        'curriculums': [],
        'semesters': [
          {
            'name': semester,
            'value': 'null' // TODO: Future may change
          }
        ],
        'semester': semester,
        'semesterValue': 'null',
        'year': year,
        'isCurrent': true,
      };
    }

    final List<Map<String, dynamic>> curriculums = [];
    final matchs = RegExp(r'<span id="form1:tableCal:(\d):naiyo(\d)">([\s\S]+?)</span>', caseSensitive: false).allMatches(content);
    for (final match in matchs) {
      final period = int.parse(match.group(1)) + 1;
      final day = int.parse(match.group(2));

      // course no detail
      if (match.group(0).contains('linkMark3')) {
        final noDetailCourses = RegExp(r'''<div class="linkMark3">([\s\S]+?)【([\S\s]+?)】<''', caseSensitive: false).allMatches(match.group(0));
        for (final course in noDetailCourses) {
          curriculums.add({
            'year': year,
            'semester': semester,
            'code': null,
            'course': course.group(1).split('&nbsp;').first,
            'teacher': course.group(2),
            'day': day,
            'period': period,
            'hasDetail': false,
          });
        }
      }

      // course has detail
      final courses = RegExp(r'''<A href = "javascript:openSyllabus\('(.+?)','(.+?)'\)" tabindex="\d">([\s\S]+?)【([\S\s]+?)】<''', caseSensitive: false).allMatches(match.group(0));
      for (final course in courses) {
        curriculums.add({
          'year': int.parse(course.group(1)),
          'semester': semester,
          'code': course.group(2),
          'course': course.group(3).split('&nbsp;').first,
          'teacher': course.group(4),
          'day': day,
          'period': period,
          'hasDetail': true,
        });
      }
    }

    return {
      'curriculums': curriculums,
      'semesters': [
        {
          'name': semester,
          'value': 'null' // TODO: Future may change
        }
      ],
      'semester': semester,
      'semesterValue': 'null',
      'year': year,
      'isCurrent': true,
    };
  }
}
