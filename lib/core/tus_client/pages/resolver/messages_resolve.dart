mixin MessagesResolve {
  List<List<String>> getHeadTitleNodes(String content) {
    final nodes = RegExp(r'<span id="form1:Poa00201A:htmlParentTable:(\d):htmlHeaderTbl:0:htmlHeaderCol" class="headTitle" style="color:White;">([\S\s]+?)</span>', caseSensitive: false).allMatches(content);
    final headTitleNodes = nodes.map((match) => match.groups([1, 2])).toList();
    return headTitleNodes;
  }

  List<Map<String, dynamic>> resolveMessages(String content) {
    final headTitleNodes = getHeadTitleNodes(content);
    final result = RegExp(r'<tr class="rowHeight">(.|\r|\n)+?</tr>', caseSensitive: false).allMatches(content);

    //(?:\d)? is HeadTitlePage's
    final isReadReg = RegExp(r'open_yet\.gif', caseSensitive: false);
    final isImportantReg = RegExp(r'topic\.gif', caseSensitive: false);
    final titleReg = RegExp(r'<span id="form1:Poa00201A:htmlParentTable:(\d+):htmlDetailTbl(?:\d)?:(\d+):htmlTitleCol(?:\d)?" title="[\S\s]+?">([\S\s]+?)</span>', caseSensitive: false);
    final fromReg = RegExp(r'<span id="form1:Poa00201A:htmlParentTable:\d+:htmlDetailTbl(?:\d)?:\d+:htmlFromCol(?:\d)?" class="from">([\S\s]?)</span>', caseSensitive: false);
    final dateReg = RegExp(r'<span id="form1:Poa00201A:htmlParentTable:\d+:htmlDetailTbl(?:\d)?:\d+:htmlFromCol(?:\d)?" class="insDate">&nbsp;\[(\d\d\d\d/\d\d/\d\d)\]</span>', caseSensitive: false);
    final isNewReg = RegExp(r'new\.gif', caseSensitive: false);
    final linkReg = RegExp(r'<a id="form1:Poa00201A:htmlParentTable:\d+:htmlDetailTbl(?:\d)?:\d+:linkEx(\d)" href="#information" onclick="openSubwindowFor201\(this, event\);" class="outputLinkEx"', caseSensitive: false);

    final List<Map<String, dynamic>> datas = [];
    for (final i in result) {
      final _content = i.group(0);

      if (titleReg.hasMatch(_content) == false) {
        continue;
      }

      final isRead = !isReadReg.hasMatch(_content);
      final isImportant = isImportantReg.hasMatch(_content);
      final isNew = isNewReg.hasMatch(_content);
      final title = titleReg.firstMatch(_content).groups([1, 2, 3]);
      final from = fromReg.firstMatch(_content).group(1);
      final link = linkReg.firstMatch(_content).group(1);
      String date = '';

      if (dateReg.hasMatch(_content)) {
        date = dateReg.firstMatch(_content).group(1);
      }

      String category;
      for (final h in headTitleNodes) {
        if (title[0] == h[0]) {
          category = h[1];
        }
      }

      datas.add({
        "index": int.parse(title[1]),
        "title": title[2],
        "category": category,
        "date": date,
        "from": from,
        "link": link,
        "isRead": isRead,
        "isImportant": isImportant,
        "isNew": isNew,
      });
    }
    return datas;
  }
}
