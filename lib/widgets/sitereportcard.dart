import 'package:flutter/cupertino.dart';
import 'package:testing_applicaation/themes/sizedBox.dart';
import 'package:testing_applicaation/themes/text_styles.dart';
import 'package:testing_applicaation/widgets/cardreuse.dart';

class SiteReportcard extends StatelessWidget {
  const SiteReportcard({
    super.key,
    this.ontap,
  });
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: ontap,
      child: cardreuse(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("23-05-2024"),
              Text("Admin: Majid"),
            ],
          ),
          10.hBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Wedding One",
                style: SubHeading2,
              ),
              Text("Cash: 10,000"),
            ],
          ),
        ],
      )),
    );
  }
}
