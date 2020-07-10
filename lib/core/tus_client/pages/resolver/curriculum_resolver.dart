import 'package:html_unescape/html_unescape.dart';

mixin CurriculumResolver {
  Map<String, dynamic> resolveCurriculum(String content, bool isCurrent) {
    final unescape = HtmlUnescape();

    final yearReg = RegExp(r'name="form1:kaikoNendoInput" value="(\d+)"', caseSensitive: false);
    final year = int.parse(yearReg.firstMatch(content).group(1));

    final semesters = [];
    final semestersReg = RegExp(r'<select id="form1:htmlGakki" name="form1:htmlGakki" class="selectOneMenu" size="\d" tabindex="\d">([\S\s]+?)</select>', caseSensitive: false);
    final semestersStr = semestersReg.firstMatch(content).group(1);
    // print('semestersStr $semestersStr');

    final currentSemesterReg = RegExp(r'<option value="(\d+)" selected="selected">([\S\s]+?)</option>', caseSensitive: false);
    final currentSemester = currentSemesterReg.firstMatch(semestersStr);
    // print('currentSemester $currentSemester');

    final optionReg = RegExp(r'<option value="([\S\s]*?)"[\S\s]*?>([\S\s]+?)</option>', caseSensitive: false);
    final options = optionReg.allMatches(semestersStr);
    // print('options $options');

    for (final semester in options) {
      semesters.add({
        'name': unescape.convert(semester.group(2)),
        'value': semester.group(1),
      });
    }

    // No data
    final err = RegExp(r'<span class="firstErr">([\S\s]+?)</span>', caseSensitive: false).firstMatch(content);
    if (err != null) {
      return {
        'curriculums': [],
        'semesters': semesters,
        'semester': unescape.convert(currentSemester.group(2)),
        'semesterValue': currentSemester.group(1),
        'year': year,
        'isCurrent': isCurrent,
      };
    }

    final List<Map<String, dynamic>> curriculums = [];
    final cells = RegExp(r'<span id="form1:(?:tableCal|calendarList|calendarJugyoTimeSchedule01List):(\d):(?:naiyo|rowVal1?0)(\d)">([\s\S]*?)</span>', caseSensitive: false).allMatches(content);
    for (final cell in cells) {
      final period = int.parse(cell.group(1)) + 1;
      final day = int.parse(cell.group(2));

      // course no detail
      final noDetailExist = cell.group(0).contains('linkMark3');
      if (noDetailExist) {
        final noDetailCourses = RegExp(r'''<div class="linkMark3">&nbsp;([\s\S]+?)&nbsp;(?:[\s\S]+?)&nbsp;【([\S\s]+?)】&nbsp;&nbsp;(\d\.\d単位)?<''', caseSensitive: false).allMatches(cell.group(0));
        for (final course in noDetailCourses) {
          curriculums.add({
            'year': year,
            'semester': unescape.convert(currentSemester.group(2)),
            'code': null,
            'course': course.group(1),
            'teacher': course.group(2),
            'day': day,
            'period': period,
            'hasDetail': false,
          });
        }
      }

      // course has detail
      //final courses = RegExp(r'''<A href = "javascript:openSyllabus\('(.+?)','(.+?)'\)" tabindex="\d">([\s\S]+?)【([\S\s]+?)】<''', caseSensitive: false).allMatches(cell.group(0));
      final courses = RegExp(r'''<A href="javascript:openSyllabus\('(.+?)','(.+?)'\)">&nbsp;([\s\S]+?)&nbsp;(?:[\s\S]+?)&nbsp;【([\S\s]+?)】&nbsp;&nbsp;(\d\.\d単位)?<''', caseSensitive: false).allMatches(cell.group(0));
      for (final course in courses) {
        curriculums.add({
          'year': int.parse(course.group(1)),
          'semester': unescape.convert(currentSemester.group(2)),
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
      'semesters': semesters,
      'semester': unescape.convert(currentSemester.group(2)),
      'semesterValue': currentSemester.group(1),
      'year': year,
      'isCurrent': isCurrent,
    };
  }
}
