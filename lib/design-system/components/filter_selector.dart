import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterSelector extends StatelessWidget {
  final FixedExtentScrollController controller;
  final List<String> items;
  final String title;
  final String value;
  final ValueChanged<int> onSelectedItemChanged;

  const FilterSelector({
    Key key,
    this.controller,
    this.items,
    this.title,
    this.value,
    this.onSelectedItemChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return CupertinoPicker(
              scrollController: controller,
              itemExtent: 40.0,
              onSelectedItemChanged: onSelectedItemChanged,
              diameterRatio: 180.0,
              useMagnifier: true,
              children: items.map((b) => Text(b.toString(), style: TextStyle(fontSize: 20.0))).toList(),
            );
          },
        );
      },
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).primaryTextTheme.headline6.copyWith(fontWeight: FontWeight.w300),
      ),
      trailing: Text(
        value ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyText2.copyWith(color: Theme.of(context).accentColor),
      ),
    );
  }
}
