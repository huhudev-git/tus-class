mixin LastPageResolver {
  int resolveLastPage(String content) {
    final reg = RegExp(r'class="pagerDeluxe_text">\d/(\d+) ページ</span>', caseSensitive: false);
    final lastPage = reg.firstMatch(content).group(1);
    return int.parse(lastPage);
  }
}
