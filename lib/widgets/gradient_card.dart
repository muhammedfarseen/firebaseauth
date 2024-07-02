import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class GradientCard extends StatelessWidget {
  GradientCard(
      {super.key,
      required this.title,
      required this.count,
      required this.icon,
      required this.Ontap,
      this.style,
      required this.gradient});

  String title;
  String? count;
  String? icon;
  VoidCallback Ontap;
  Gradient gradient;
  TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        pressedOpacity: 0.8,
        onPressed: Ontap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), gradient: gradient),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    icon!,
                    height: 30,
                    width: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(title,
                          maxLines: 2,
                          style: style?? SubHeading1.copyWith(color: Colors.white)),
                    ),
                    Text(count ?? "",
                        style: SubHeading1.copyWith(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
