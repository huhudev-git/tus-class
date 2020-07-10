mixin LoginPageResolver {
  Map<String, dynamic> resolveLogin(String content) {
    final err = RegExp(r'<span class="firstErr">([\S\s]+?)</span>', caseSensitive: false).firstMatch(content);
    if (err != null) {
      return {
        'isAuth': false,
        'name': 'anonymous',
        'error': err.group(1),
      };
    }

    final reg = RegExp(r"<span>([\S\s]+?)&nbsp;さん&nbsp;：&nbsp;前回ログイン&nbsp;[\S\s]+?</span>", caseSensitive: false);
    final username = reg.firstMatch(content).group(1).replaceAll(RegExp('　'), ' ');

    return {
      'isAuth': true,
      'name': username,
      'error': '',
    };
  }
}
