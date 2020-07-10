class CategoryResolver {
  List<Map<String, dynamic>> resolveCategories(String content) {
    final _content = RegExp(r'<table id="form1:Poa00201A:htmlParentTable" cellpadding="0" cellspacing="0" width="700">([\S\s]+?)id="form1:Poa00201A:allInfoButton"', caseSensitive: false).stringMatch(content);
    final headTitleList = _content.split(RegExp(r'<span id="form1:Poa00201A:htmlParentTable:\d+:htmldivf"></span>', caseSensitive: false));

    final List<Map<String, dynamic>> categorys = [];
    for (final part in headTitleList) {
      final title = RegExp(r'<span id="form1:Poa00201A:htmlParentTable:(\d):htmlHeaderTbl:0:htmlHeaderCol" class="headTitle" style="color:White;">([\S\s]+?)</span>', caseSensitive: false).firstMatch(part);
      if (title == null) {
        continue;
      }

      final isLastPage = !RegExp('全て表示する', caseSensitive: false).hasMatch(part);
      categorys.add({
        'index': int.parse(title.group(1)),
        'category': title.group(2),
        'isLastPage': isLastPage,
        'page': 0,
      });
    }

    return categorys;
  }
}
