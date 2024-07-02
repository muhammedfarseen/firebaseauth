import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.ontap,
    required this.buttontext,
    this.color,
    this.buttoncolor,
    this.style,
  });
  final String buttontext;
  final VoidCallback ontap;
  Color? color;
  Color? buttoncolor;
  TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.all(0),
      onPressed: ontap,
      child: Container(
        height: 53,
        decoration: BoxDecoration(
            border: Border.all(
              color: buttoncolor ?? Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(12),
            color: color ?? ColourResources.Blue),
        child: Center(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  buttontext,
                  style: style ?? Body2.copyWith(color: ColourResources.white),
                ))),
      ),
    );
  }
}
