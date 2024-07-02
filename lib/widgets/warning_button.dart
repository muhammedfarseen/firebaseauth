import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class WarningButton extends StatelessWidget {
  const WarningButton(
      {super.key, required this.ontap, required this.buttontext});
  final String buttontext;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.all(0),
      onPressed: ontap,
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        child: Container(
          height: 60,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              buttontext,
              style: SubHeading2.copyWith(color: ColourResources.orange),
            ),
          )),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColourResources.white),
        ),
      ),
    );
  }
}
