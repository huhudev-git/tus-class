import 'package:flutter/material.dart';

class FilterCheckbox extends StatelessWidget {
  final String text;
  final bool value;
  final ValueChanged<bool> onChanged;

  const FilterCheckbox({Key key, this.text, this.value, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).primaryTextTheme.headline6.copyWith(fontWeight: FontWeight.w300),
          ),
          Spacer(),
          Checkbox(
            activeColor: Theme.of(context).accentColor,
            onChanged: onChanged,
            value: value,
          ),
        ],
      ),
    );
  }
}
