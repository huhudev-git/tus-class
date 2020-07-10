import 'package:flutter/material.dart';

class FilterBoolSelector extends StatelessWidget {
  final String text;
  final bool value;
  final ValueChanged<bool> onChanged;

  const FilterBoolSelector({Key key, this.text, this.value, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      dense: true,
      title: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).primaryTextTheme.headline6.copyWith(fontWeight: FontWeight.w300),
      ),
      onChanged: onChanged,
      value: value,
      activeColor: Theme.of(context).accentColor,
    );
  }
}
