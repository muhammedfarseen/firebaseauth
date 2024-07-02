import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/sizedBox.dart';
import 'package:testing_applicaation/themes/text_styles.dart';
import 'package:testing_applicaation/widgets/app_buttons.dart';

class TwoButtonCard extends StatelessWidget {
   TwoButtonCard({
    super.key, required this.title, required this.content,this.buttonenable
  });
  final String title;
  final String content;
   bool? buttonenable;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 2,
        color: Colors.blueGrey[40],
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: SubHeading2,
              ),
              5.hBox,
              Text(
               content,
                style: Caption1,
              ),
              10.hBox,
              buttonenable==true?
              Row(
                children: [
                  Expanded(child: AppButton(ontap: () {}, buttontext: 'Allow',)),
                  5.wBox,
                  Expanded(child: AppButton(ontap: () {}, buttontext: 'Deny',color: Colors.white,buttoncolor: ColourResources.white,style: CaptionMedium,)),
                ],
              ):0.hBox,
            ],
          ),
        ),
      ),
    );
  }
}
