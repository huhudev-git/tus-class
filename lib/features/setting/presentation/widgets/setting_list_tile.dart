import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SettingListTile extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onTap;
  final Widget trailing;

  const SettingListTile({
    Key key,
    this.icon,
    this.color,
    this.text,
    this.onTap,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          onTap: onTap,
          leading: Neumorphic(
            style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(3.0)),
              shape: NeumorphicShape.convex,
              depth: 1.5,
              color: color,
            ),
            child: Icon(
              icon,
              color: Theme.of(context).accentIconTheme.color,
            ),
          ),
          title: Text(
            text,
            style: Theme.of(context).primaryTextTheme.subtitle1,
          ),
          dense: true,
          trailing: trailing,
        ),
      ),
    );
  }
}
