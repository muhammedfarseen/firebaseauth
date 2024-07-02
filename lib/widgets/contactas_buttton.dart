import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class ContactasButton extends StatelessWidget {
  const ContactasButton(
      {super.key, required this.ontap, required this.buttontext});
  final String buttontext;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.all(0),
      onPressed: ontap,
      child: Container(
        height: 60,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            buttontext,
            style: SubHeading1,
          ),
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColourResources.white),
      ),
    );
  }
}
