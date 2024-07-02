import 'package:flutter/cupertino.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class EveintsAllbutton extends StatelessWidget {
  EveintsAllbutton({
    super.key,
    this.title,
  });
  final String? title;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
            color: ColourResources.lightWhite,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title!,
            style: Body2,
          ),
        ),
      ),
    );
  }
}
