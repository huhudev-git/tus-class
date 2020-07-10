mixin SyllabusSearchDetailResolver {
  Map<String, dynamic> resolveSyllabusSearchDetail(String content, int year) {
    final matchs = RegExp(r'colspan="\d"  width="\d+px">[\S\s]+?</th><td[^>]*>([\S\s]+?)</td>', caseSensitive: false).allMatches(content).toList();
    // print('${matchs.length} $matchs');

    if (matchs.isEmpty) {
      return null;
    } else if (matchs.length == 37) {
      // Course number
      matchs.removeAt(1);
    }
    for (var i = 0; i < matchs.length; i++) {
      // print('$i, ${matchs[i].group(1)}');
    }

    final code = RegExp(r'<td  style="word-break:break-all; border-left: 1px solid gray;" colspan="\d" width = "\d+px"> ([\S\s]*?)</td>', caseSensitive: false).firstMatch(content).group(1);

    final courseJp = _filterString(matchs[0].group(1));
    // print('courseJp $courseJp');
    final courseEn = _filterString(matchs[1].group(1));
    // print('courseEn $courseEn');
    // why [Class name] have day periods info
    final course = _filterString(matchs[0].group(1)).replaceAll(RegExp('^ '), '');
    // print('course $course');

    final teachersReg = RegExp(r"""<A href='Javascript:openSylKynInf\((?:this ,)?"([\s\S]+?)"\)'[\s\S]+?>([\s\S]+?)</A>""", caseSensitive: false);
    final teachers = teachersReg
        .allMatches(matchs[3].group(1))
        .map((e) => {
              'code': e.group(1),
              'name': e.group(2),
            })
        .toList();
    // print('teachers $teachers');

    final semester = matchs[5].group(1);
    // print('semester $semester');
    final dayPeriod = matchs[7].group(1);
    // print('dayPeriod $dayPeriod');

    String department = '';
    String subject = '';
    if (matchs[9].group(1) != ' &nbsp;') {
      final ds = _filterString(matchs[9].group(1)).split(RegExp(r'( |　|\n)'));
      department = ds[1];
      if (ds.length == 4) {
        subject = ds[2];
      } else {
        subject = '';
      }
    }

    final languages = _filterString(matchs[10].group(1));
    // print('languages $languages');
    final credit = double.parse(_filterString(matchs[11].group(1)));
    // print('credit $credit');
    final grade = getGeade(_filterString(matchs[12].group(1)));
    // print('grade $grade');
    final category = _filterString(matchs[13].group(1));
    // print('category $category');
    final form = _noMultiLine(_filterString(matchs[14].group(1)));
    // print('form -$form-');
    final descriptions = _filterString(matchs[15].group(1));
    // print('descriptions $descriptions');
    final objectives = _filterString(matchs[16].group(1));
    // print('objectives $objectives');
    final goals = _filterString(matchs[17].group(1));
    // print('goals $goals');
    final notes = _filterString(matchs[18].group(1));
    // print('notes $notes');
    final essay = _filterString(matchs[19].group(1));
    // print('essay $essay');
    final quizTypeTest = _filterString(matchs[20].group(1));
    // print('quizTypeTest $quizTypeTest');
    final debate = _filterString(matchs[21].group(1));
    // print('debate $debate');
    final groupWork = _filterString(matchs[22].group(1));
    // print('groupWork $groupWork');
    final presentation = _filterString(matchs[23].group(1));
    // print('presentation $presentation');
    final flippedClassroom = _filterString(matchs[24].group(1));
    // print('flippedClassroom $flippedClassroom'));
    final describe = _filterString(matchs[25].group(1));
    // print('describe $describe');
    final preparation = _filterString(matchs[26].group(1));
    // print('preparation $preparation');
    final gradingPolicy = _filterString(matchs[27].group(1));
    // print('gradingPolicy $gradingPolicy');
    final gradingCriteria = _filterString(matchs[28].group(1));
    // print('gradingCriteria $gradingCriteria');
    final textbooks = _filterString(matchs[29].group(1));
    // print('textbooks $textbooks');
    final materialbooks = _filterString(matchs[30].group(1));
    // print('materialbooks $materialbooks');
    final plan = _filterString(matchs[31].group(1));
    // print('plan $plan');
    final trainingCourse = _filterString(matchs[32].group(1));
    // print('trainingCourse $trainingCourse');
    final experience = _filterString(matchs[33].group(1));
    // print('experience $experience');
    final software = _filterString(matchs[34].group(1));
    // print('software $software');
    final remarks = _filterString(matchs[35].group(1));
    // print('remarks $remarks');

    return {
      'year': year,
      'courseJp': courseJp,
      'courseEn': courseEn,
      'course': course,
      'teachers': teachers,
      'dayPeriod': dayPeriod,
      'semester': semester,
      'department': department,
      'languages': languages,
      'subject': subject,
      'credit': credit,
      'grade': grade,
      'category': category,
      'form': form,
      'descriptions': descriptions,
      'objectives': objectives,
      'goals': goals,
      'notes': notes,
      'essay': essay,
      'quizTypeTest': quizTypeTest,
      'debate': debate,
      'groupWork': groupWork,
      'presentation': presentation,
      'flippedClassroom': flippedClassroom,
      'describe': describe,
      'preparation': preparation,
      'gradingPolicy': gradingPolicy,
      'gradingCriteria': gradingCriteria,
      'textbooks': textbooks,
      'materialbooks': materialbooks,
      'plan': plan,
      'trainingCourse': trainingCourse,
      'experience': experience,
      'software': software,
      'remarks': remarks,
      'code': code,
    };
  }

  String getGeade(String input) {
    final numbers = ['０', '１', '２', '３', '４', '５', '６', '７', '８', '９'];
    String halfInput;
    String result;

    for (final s in numbers) {
      halfInput = input.replaceAll(RegExp(s), numbers.indexOf(s).toString());
    }
    halfInput = halfInput.replaceAll(RegExp('(　| )', caseSensitive: false), '');
    final years = RegExp(r'\d').allMatches(input).toList();

    if (years.length == 1) {
      result = years[0].group(0);
      if (int.parse(years[0].group(0)) < 0 || int.parse(years[0].group(0)) > 6) {
        result = '1';
      }
    } else if (years.length == 2) {
      int year1 = int.parse(years[0].group(0));
      int year2 = int.parse(years[1].group(0));
      if (year1 < 0 || year1 > 6) {
        year1 = 1;
      }
      if (year2 < 0 || year2 > 6) {
        year2 = 4;
      }
      if (year1 >= year2) {
        year1 = 1;
        year2 = 4;
      }
      result = '$year1～$year2';
    } else {
      result = '1～4';
    }
    return result;
  }

  String _filterString(String text) {
    return text.replaceAll('&nbsp;', ' ').replaceAll(RegExp('<BR>', caseSensitive: false), '\n');
  }

  String _noMultiLine(String text) {
    return text.split('\n').first;
  }
}
