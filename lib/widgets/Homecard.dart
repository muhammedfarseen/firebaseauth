import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/ProgressIndicatorWidget.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/sizedBox.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class Homecard extends StatelessWidget {
  const Homecard({
    super.key,
    required this.title,
    required this.location,
    required this.date,
    required this.ontap,
    required this.jonied,
  });
  final String title;
  final String location;
  final String date;

  final VoidCallback ontap;

  final bool? jonied;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.all(0),
      onPressed: ontap,
      child: Container(
        child: Card(
          elevation: 2,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                      ],
                    ),
                  ],
                ),
              ),
              jonied == true
                  ? Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ColourResources.Green,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text("Joined"),
                      )),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ProgressIndicatorWidget(
                          width: 323, // Replace with your desired width
                          ratio: 0.5, // Replace with your desired ratio
                          totalValue:
                              1000, // Replace with your desired animation duration
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class Workcard extends StatelessWidget {
  const Workcard(
      {super.key,
      required this.title,
      required this.location,
      required this.date,
      this.isprogres});
  final String title;
  final String location;
  final String date;

  final bool? isprogres;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.all(0),
      onPressed: () {},
      child: Container(
        child: Card(
          elevation: 2,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Direction",
                          style: SubHeading2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 16,
                            width: 16,
                            child: Image.asset("assets/bg/location.png"),
                          ),
                        ),
                        Text(
                          location,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    15.hBox,
                    Row(
                      children: [
                        Text("Reporting Time", style: SubHeading2),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 16,
                            width: 16,
                            child: Image.asset("assets/bg/calendar-tick.png"),
                          ),
                        ),
                        Text(
                          date,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    isprogres ?? true
                        ? Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Staffs",
                                  style: SubHeading2,
                                ),
                              ],
                            ),
                          )
                        : SizedBox(),
                    3.hBox,
                    isprogres ?? true
                        ? Center(
                            child: ProgressIndicatorWidget(
                              width: 323, // Replace with your desired width
                              ratio: 0.5, // Replace with your desired ratio
                              totalValue:
                                  1000, // Replace with your desired animation duration
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkScreencard extends StatelessWidget {
  const WorkScreencard({
    super.key,
    required this.title,
    required this.location,
    required this.date,
    required this.ontap,
    required this.jonied,
    this.caseId,
  });
  final String title;
  final String location;
  final String date;

  final VoidCallback ontap;

  final bool jonied;
  final int? caseId;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.all(0),
      onPressed: () {},
      child: Container(
        child: Card(
          elevation: 2,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 16,
                          width: 16,
                          child: Image.asset("assets/bg/calendar-tick.png"),
                        ),
                        Container(
                          child: Text(
                            date,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    10.hBox,
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
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              jonied == true
                  ? Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: displaycolor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          )),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          displayText,
                        ),
                      )),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  String get displayText {
    switch (caseId) {
      case 1:
        return 'on Working';
      case 2:
        return 'Joined';
      case 3:
        return 'canceled';
      case 4:
        return 'terminated';
      default:
        return 'No state!';
    }
  }

  Color get displaycolor {
    switch (caseId) {
      case 1:
        return ColourResources.Green;
      case 2:
        return ColourResources.Blue;
      case 3:
        return ColourResources.orange;
      case 4:
        return ColourResources.grey;
      default:
        return Colors.white;
    }
  }
}
