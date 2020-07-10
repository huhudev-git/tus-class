import 'package:flutter/material.dart';

import '../../../../design-system/components/components.dart';

class ContentBuilder extends StatelessWidget {
  final List<Rule> _rules = [
    Rule(
      RegExp('<b>(.*?)</b>', caseSensitive: false),
      (m) => TextSpan(text: m.group(1), style: TextStyle(fontWeight: FontWeight.bold)),
    ),
    Rule(
      RegExp('<a.*?href=["|\'](.*?)["|\'].*?>(.*?)</a>', caseSensitive: false),
      (m) => LinkTextSpan(url: m.group(1), text: m.group(2)),
    ),
    Rule(
      RegExp(r'[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,}', caseSensitive: false),
      (m) => LinkTextSpan(text: m.group(0), url: 'mailto:${m.group(0)}'),
    ),
    Rule(
      RegExp(r'(((http|https)\:\/\/)|(www)){1}[a-zA-Z0-9\.\/\?\:@\-_=#]+\.([a-zA-Z0-9\&\.\/\?\:@\-_=#])*', caseSensitive: false),
      (m) => LinkTextSpan(url: m.group(0)),
    ),
  ];

  final String content;
  ContentBuilder(this.content);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).primaryTextTheme.bodyText1.copyWith(fontSize: 15.0),
        children: process(),
      ),
    );
  }

  List<TextSpan> process() {
    List<Node> nodes = [Node((content ?? '').replaceAll(RegExp('<br>', caseSensitive: false), '\n'), null, null)];

    for (final rule in _rules) {
      nodes = _process(nodes, rule);
    }

    final List<TextSpan> result = [];

    for (final node in nodes) {
      if (node.rule == null) {
        result.add(TextSpan(text: node.content));
      } else {
        result.add(node.rule.callback(node.result));
      }
    }

    return result;
  }

  List<Node> _process(List<Node> nodes, Rule rule) {
    final List<Node> temp = [];
    final exg = rule.exp;

    for (final node in nodes) {
      if (node.rule == null) {
        final matchs = exg.allMatches(node.content).toList();
        final contents = node.content.split(exg);

        for (final content in contents) {
          final index = contents.indexOf(content);
          temp.add(Node(content, null, null));

          if (index == contents.length - 1) {
            break;
          }

          temp.add(Node(node.content, matchs[index], rule));
        }
      } else {
        temp.add(node);
      }
    }
    return temp;
  }
}

class Node {
  final String content;
  final RegExpMatch result;
  final Rule rule;

  Node(this.content, this.result, this.rule);
}

class Rule {
  final RegExp exp;
  final TextSpan Function(Match) callback;

  Rule(this.exp, this.callback);
}
