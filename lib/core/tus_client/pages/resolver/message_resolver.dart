import 'package:html_unescape/html_unescape.dart';

import '../../data_source/tus_client.dart';

mixin MessageResolve {
  Map<String, dynamic> resolveMessage(String content) {
    final unescape = HtmlUnescape();

    final titleReg = RegExp(r'<span id="form1:htmlTitle" class="output002">([\S\s]*?)</span>', caseSensitive: false);
    final senderReg = RegExp(r'<span id="form1:htmlFrom" class="output002">([\S\s]*?)</span>', caseSensitive: false);
    final mainTextReg = RegExp(r'<span id="form1:htmlMain" class="output002">([\S\s]*?)</span>', caseSensitive: false);
    final filenameReg = RegExp(r'<span id="form1:htmlFileTable:(?:\d+):labelFileName" class="outputText" title="([\S\s]+?)">[\S\s]*?</span>', caseSensitive: false);
    final fileSizeReg = RegExp(r'<span id="form1:htmlFileTable:(?:\d+):labelFileSize" class="outputText">([\S\s]*?)</span>', caseSensitive: false);
    final isEntryableReg = RegExp(r'moshikomi_off\.gif', caseSensitive: false);
    final isEntryReg = RegExp(r'moshikomi_clear_off\.gif', caseSensitive: false);

    final title = unescape.convert(titleReg.firstMatch(content).group(1));
    final sender = unescape.convert(senderReg.firstMatch(content).group(1));
    final mainText = unescape.convert(mainTextReg.firstMatch(content).group(1));
    final pageId = TUSClient.getPageId(content);

    // files
    final List<Map<String, dynamic>> files = [];
    final result = filenameReg.allMatches(content);
    final result2 = fileSizeReg.allMatches(content);

    if (result.length == result2.length) {
      for (var i = 0; i < result.length; i++) {
        final filename = unescape.convert(result.elementAt(i).group(1));
        final size = int.parse(unescape.convert(result2.elementAt(i).group(1)).replaceAll(RegExp(r'[^\d]'), ''));

        files.add({
          'filename': filename,
          'index': i,
          'size': size,
        });
      }
    } else {
      for (var i = 0; i < (result.length > result2.length ? result2.length : result.length); i++) {
        final filename = unescape.convert(result.elementAt(i).group(1));
        final size = int.parse(unescape.convert(result2.elementAt(i).group(1)).replaceAll(RegExp(r'[^\d]'), ''));

        files.add({
          'filename': filename,
          'index': i,
          'size': size,
        });
      }
    }

    final isEntryable = isEntryableReg.hasMatch(content);
    final isEntry = isEntryReg.hasMatch(content);

    return {
      'pageId': pageId,
      'title': title,
      'sender': sender,
      'content': mainText,
      'files': files,
      'isEntryable': isEntryable || isEntry,
      'isEntry': isEntry,
    };
  }
}
