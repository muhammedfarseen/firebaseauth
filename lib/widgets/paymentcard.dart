import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/sizedBox.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class Paymentcard extends StatelessWidget {
  const Paymentcard({
    super.key,
    required this.title,
    required this.location,
    required this.date,
    required this.ontap,
    this.NotFilled,
    this.color,
  });
  final String title;
  final String location;
  final String date;

  final VoidCallback ontap;
  final bool? NotFilled;
  final bool? color;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.all(0),
      onPressed: ontap,
      child: Container(
        child: Column(
          children: [
            Card(
              elevation: 2,
              color: color == true ? Colors.white : ColourResources.lightWhite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              child: Image.asset("assets/bg/location.png"),
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        10.hBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 16,
                              width: 16,
                              child: Image.asset("assets/bg/calendar-tick.png"),
                            ),
                            Text(
                              date,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 16,
                                  width: 16,
                                  child:
                                      SvgPicture.asset("assets/bg/profile.svg"),
                                ),
                                Text("40/{20}")
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  NotFilled == true
                      ? Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: ColourResources.orange,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              )),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              "Staff Not Filled",
                              style: SubHeading2.copyWith(
                                  color: ColourResources.white),
                            ),
                          )),
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
