import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testing_applicaation/themes/sizedBox.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class Mastercard extends StatelessWidget {
  final String text;
  final String icon;
  VoidCallback ontap;

  Mastercard({
    super.key,
    required this.text,
    required this.icon, required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: CupertinoButton(
        pressedOpacity: 0.8,
        onPressed: ontap,
        child: Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: double.infinity,
            height: 113,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: SvgPicture.asset(
                        icon,
                        height: 32,
                        width: 32,
                      ),
                    ),
                    10.hBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            text,
                            maxLines: 2,
                            style: SubHeading2.copyWith(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
