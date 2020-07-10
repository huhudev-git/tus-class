import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';
import '../../domain/entities/message_detail.dart';
import '../widgets/content_builder.dart';
import '../widgets/entry_buttom.dart';
import '../widgets/file_filter_widget.dart';

class MessageDetailLoadedPage extends StatelessWidget {
  final Message message;
  final MessageDetail detail;

  const MessageDetailLoadedPage({
    Key key,
    this.message,
    this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      children: <Widget>[
        SizedBox(height: 30.0),
        _infoBar(context),
        SizedBox(height: 30.0),
        _title(context),
        SizedBox(height: 10.0),
        _icon(),
        SizedBox(height: 10.0),
        ContentBuilder(detail.content),
        SizedBox(height: 10.0),
        ..._files(),
        ..._entry(),
      ],
    );
  }

  Widget _infoBar(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    detail.sender,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Text(
          message.date ?? '',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }

  Widget _title(BuildContext context) {
    return Text(
      detail.title,
      style: Theme.of(context).primaryTextTheme.headline5,
    );
  }

  Widget _icon() {
    final List<Widget> result = [];
    if (message.isNew) {
      result.add(Icon(
        Icons.fiber_new,
        color: Colors.amber,
        size: 15.0,
      ));
    }

    if (message.isImportant) {
      result.add(Icon(
        Icons.info,
        color: Colors.red[200],
        size: 15.0,
      ));
    }

    if (result.length == 2) {
      result.insert(
        1,
        Text(
          '・',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      );
    }
    return Row(children: result);
  }

  List<Widget> _files() {
    final List<Widget> result = [Divider(color: Colors.black54, height: 20.0)];
    for (var i = 0; i < detail.files.length; i++) {
      result.add(_file(i));
      result.add(SizedBox(height: 10.0));
    }
    result.removeLast();
    if (detail.isEntryable) {
      result.add(Divider(color: Colors.black54, height: 20.0));
    }
    return result;
  }

  Widget _file(int i) {
    return FileFilter(
      filename: detail.files[i].filename,
      size: detail.files[i].size,
      index: i,
      pageId: detail.pageId,
    );
  }

  List<Widget> _entry() {
    final List<Widget> result = [];
    if (detail.isEntryable) {
      result.add(EntryButtom(pageId: detail.pageId, isEntry: detail.isEntry));
      result.add(SizedBox(height: 40.0));
    }

    return result;
  }
}
