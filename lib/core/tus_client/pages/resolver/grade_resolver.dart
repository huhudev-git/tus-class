mixin GradeResolver {
  List<Map<String, dynamic>> resolveGrade(String content) {
    String _content = RegExp(r'<table border="0" cellpadding="0" cellspacing="0" class="singleTableLine kamokuTable" width="100%">([\S\s]+?)</table>', caseSensitive: false).stringMatch(content);
    _content = _content.replaceAll(RegExp(r'[\t\r\n]'), '');

    final matchs = RegExp(r'<TD class="tdKamokuList">([\S\s]*?)</TD><TD class="tdTaniList">([\S\s]*?)</TD><TD class="tdHyokaList">([\S\s]*?)</TD><TD class="tdGList">([\S\s]*?)</TD><TD class="tdGPList">([\S\s]*?)</TD><TD class="tdNendoList">([\S\s]*?)</TD>', caseSensitive: false).allMatches(_content).toList();
    final List<Map<String, dynamic>> result = [];
    String _current = '';

    for (var j = 0; j < 3; j++) {
      for (var i = j; i < matchs.length; i = i + 3) {
        final item = matchs[i].groups([1, 2, 3, 4, 5, 6]);
        if (item[0].isNotEmpty && item[1].isEmpty && item[2].isEmpty && item[3].isEmpty && item[4].isEmpty && item[5].isEmpty) {
          //if (RegExp('【.+?】|◆').hasMatch(item[0])) {
          _current = item[0];
          //}
        } else {
          result.add({
            'course': _fliter(item[0]),
            'credit': double.parse(_fliter(item[1])),
            'evaluation': _fliter(item[2]),
            'g': double.parse(_fliter(item[3])),
            'gp': double.parse(_fliter(item[4])),
            'year': int.parse(_fliter(item[5])),
            'category': _current,
          });
        }
      }
    }
    return result;
  }

  String _fliter(String input) {
    final result = input.replaceAll(RegExp('(　| )', caseSensitive: false), '');
    return result;
  }
}
