import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../domain/entities/message.dart';
import '../message_bloc/message_bloc.dart';
import '../pages/message_detail_page.dart';

class MessageListTile extends StatefulWidget {
  final int index;
  final int categoryId;
  final String category;
  final List<Message> messages;

  const MessageListTile({
    Key key,
    this.index,
    this.categoryId,
    this.category,
    this.messages,
  }) : super(key: key);

  @override
  _MessageListTileState createState() => _MessageListTileState();
}

class _MessageListTileState extends State<MessageListTile> {
  Message get message => widget.messages[widget.index];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _icon(),
      title: _title(),
      subtitle: _subtitle(),
      onTap: _onTap,
    );
  }

  Widget _title() {
    final result = RegExp(r'^[\[【]([\S\s]+?)[】\]]').firstMatch(message.title);
    if (result != null) {
      final _title = message.title.replaceFirst(RegExp(r'^[\[【]([\S\s]+?)[】\]]'), '');
      return RichText(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: '[${result.group(1)}]',
              style: Theme.of(context).primaryTextTheme.subtitle1.copyWith(
                    fontWeight: message.isRead ? Theme.of(context).primaryTextTheme.subtitle1.fontWeight : FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
            ),
            TextSpan(
              text: _title,
              style: Theme.of(context).primaryTextTheme.subtitle1.copyWith(
                    fontWeight: message.isRead ? Theme.of(context).primaryTextTheme.subtitle1.fontWeight : FontWeight.bold,
                  ),
            )
          ],
        ),
      );
    } else {
      return Text(
        message.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).primaryTextTheme.subtitle1.copyWith(
              fontWeight: message.isRead ? Theme.of(context).primaryTextTheme.subtitle1.fontWeight : FontWeight.bold,
            ),
      );
    }
  }

  Widget _subtitle() {
    final List<Widget> result = [];
    if (message.isImportant) {
      result.add(Icon(Icons.info, size: 13.5, color: Colors.red[200]));
      result.add(SizedBox(width: 5.0));
    }
    if (message.isNew) {
      result.add(Icon(Icons.fiber_new, size: 13.5, color: Colors.amber));
      result.add(SizedBox(width: 5.0));
    }
    if ((message.isNew || message.isImportant) && message.date != null) {
      result.add(Text('・'));
      result.add(SizedBox(width: 5.0));
    }
    if (message.date != null && message.date.isNotEmpty) {
      result.add(Icon(Icons.date_range, size: 13.5, color: Colors.black38));
      result.add(SizedBox(width: 2.0));
      result.add(Text(
        message.date,
        style: Theme.of(context).primaryTextTheme.subtitle2,
      ));
    }
    return Row(
      children: result,
    );
  }

  Widget _icon() {
    IconData icon = Icons.control_point;
    if (RegExp('重要').hasMatch(message.title)) {
      icon = Icons.info;
    } else if (RegExp('留学生').hasMatch(message.title)) {
      icon = Icons.public;
    } else if (RegExp('国際').hasMatch(message.title)) {
      icon = Icons.public;
    } else if (RegExp('アルバイト').hasMatch(message.title)) {
      icon = Icons.attach_money;
    } else if (RegExp('テスト').hasMatch(message.title)) {
      icon = Icons.edit;
    } else if (RegExp('(英会話|英語)').hasMatch(message.title)) {
      icon = Icons.translate;
    } else if (RegExp('企業').hasMatch(message.title)) {
      icon = Icons.business;
    } else if (RegExp('卒業').hasMatch(message.title)) {
      icon = Icons.school;
    } else if (RegExp('時間').hasMatch(message.title)) {
      icon = Icons.access_time;
    } else if (RegExp('休み').hasMatch(message.title)) {
      icon = Icons.beach_access;
    } else if (RegExp('健康').hasMatch(message.title)) {
      icon = Icons.local_hospital;
    } else if (RegExp('セキュリティー').hasMatch(message.title)) {
      icon = Icons.security;
    } else if (RegExp('成績').hasMatch(message.title)) {
      icon = Icons.format_list_bulleted;
    } else if (RegExp('(インターンシップ|インターン)').hasMatch(message.title)) {
      icon = Icons.business_center;
    } else if (RegExp('(喫煙|禁煙|たばこ)').hasMatch(message.title)) {
      icon = Icons.smoke_free;
    } else if (RegExp('(更新|アップデート)').hasMatch(message.title)) {
      icon = Icons.update;
    } else if (RegExp('寮').hasMatch(message.title)) icon = Icons.hotel;

    return Neumorphic(
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 2,
        intensity: 0.8,
      ),
      child: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Center(
          child: NeumorphicIcon(
            icon,
            size: 30.0,
            style: NeumorphicStyle(
              depth: 1,
              color: Theme.of(context).primaryIconTheme.color,
            ),
          ),
        ),
      ),
    );
  }

  void _onTap() {
    context.read<MessageBloc>().add(MessageEvent.read(categoryId: widget.categoryId, index: widget.index));

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MessageDetailPage(
          index: widget.index,
          categoryId: widget.categoryId,
          category: widget.category,
          messages: widget.messages,
          bloc: context.read<MessageBloc>(),
        ),
      ),
    );
  }
}
