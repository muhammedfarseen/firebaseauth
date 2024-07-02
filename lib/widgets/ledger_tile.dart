import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LedgerTile extends StatelessWidget {
  LedgerTile(
      {super.key,
      required this.ontap,
      required this.title,
      this.trailing,
      this.tilecolor,
      this.iconcolour,
      this.style,
      this.leading,
      this.subtitle});
  final String title;
  final Widget? subtitle;
  final VoidCallback ontap;
  Color? tilecolor;
  Color? iconcolour;
  TextStyle? style;
  final Widget? trailing;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: ontap,
      padding: EdgeInsets.zero,
      child: ListTile(
        leading: leading,
        tileColor: tilecolor,
        iconColor: iconcolour,
        title: Text(
          title,
          style: style,
        ),
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }
}
