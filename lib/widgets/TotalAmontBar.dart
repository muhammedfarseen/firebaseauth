import 'package:flutter/cupertino.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/sizedBox.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class TotalAmountBar extends StatelessWidget {
  TotalAmountBar({
    super.key,
    this.isblue,
  });
  final bool? isblue;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Total Amount',
            style: SubHeading2.copyWith(
                color: isblue == true
                    ? ColourResources.white
                    : ColourResources.Black,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted),
          ),
          22.wBox,
          Text(
            '₹            15,000',
            style: SubHeading2.copyWith(
              color: isblue == true
                  ? ColourResources.white
                  : ColourResources.Black,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: isblue == true
                  ? ColourResources.white
                  : ColourResources.Black,
            ),
          )
        ],
      ),
      color: isblue == true ? ColourResources.Blue : ColourResources.lightWhite,
    );
  }
}
