import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testing_applicaation/themes/app_colours.dart';

class cardreuse extends StatelessWidget {
  cardreuse({super.key, required this.child, this.onpressed});
  final Widget child;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: CupertinoButton(
        onPressed: onpressed,
        child: Container(
          width: double.infinity,
          child: Padding(padding: const EdgeInsets.all(8.0), child: child),
        ),
      ),
    );
  }
}
