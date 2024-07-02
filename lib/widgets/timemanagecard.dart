import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/sizedBox.dart';
import 'package:testing_applicaation/themes/text_styles.dart';
import 'package:testing_applicaation/widgets/cardreuse.dart';

class Timemanagecard extends StatelessWidget {
  const Timemanagecard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return cardreuse(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Start Time",
              style: Body2,
            ),
            Text(
              "10:00 AM",
              style: Body2,
            ),
          ],
        ),
        10.hBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "End Time",
              style: Body2,
            ),
            Text(
              "04:00 PM",
              style: Body2,
            ),
          ],
        ),
        10.hBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Date",
              style: Body2,
            ),
            Text(
              "01-01-2024",
              style: Body2,
            ),
          ],
        ),
      ],
    ));
  }
}

class peymentdatecard extends StatelessWidget {
  const peymentdatecard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: cardreuse(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Date",
                style: Body2,
              ),
              Text(
                "01-01-2024",
                style: Body2,
              ),
            ],
          ),
          10.hBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Amount",
                style: Body2,
              ),
              Text(
                "₹500",
                style: Body2,
              ),
            ],
          ),
          10.hBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Payment Reference",
                style: Body2,
              ),
              Text(
                "INVI123",
                style: Body2,
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class TotalAmountcard extends StatelessWidget {
  const TotalAmountcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return cardreuse(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Amount",
              style: Body2,
            ),
            Text.rich(
              TextSpan(
                text: "₹                     ${500}",
                style: SubHeading2.copyWith(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
            )
          ],
        ),
        10.hBox,
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Checkbox(
            value: true,
            onChanged: (value) {},
          ),
          Text(
            "Paid",
            style: SubHeading2,
          ),
          Text.rich(
            TextSpan(
              text: "₹                     ${500}",
              style: SubHeading2.copyWith(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
          )
        ]),
        10.hBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Balance Due",
              style: Body2.copyWith(color: ColourResources.Green),
            ),
            Text.rich(
              TextSpan(
                text: "₹                     ${500}",
                style: SubHeading2.copyWith(
                  color: ColourResources.Green,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
