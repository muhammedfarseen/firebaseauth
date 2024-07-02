import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/sizedBox.dart';
import 'package:testing_applicaation/themes/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class callprofile extends StatelessWidget {
   callprofile({
    
    super.key,  this.subtitle,
  });
  bool? subtitle;
  @override
  Widget build(BuildContext context) {
    Future<void> _makePhoneCall(String phoneNumber) async {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    }

    return Card(
      color: Colors.white,
      child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600"),
          ),
          title: Text(
            "John Wick",
            style: SubHeading2,
          ),
          subtitle: subtitle==true? Text(
            "Capitan",
         style: Caption1.copyWith(color: ColourResources.grey)
          ):
          0.hBox,
          trailing: CupertinoButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              _makePhoneCall("+91 7034149296");
            },
            child: Image.asset(
              "assets/bg/Call icon.png",
              height: 36,
              width: 36,
            ),
          )),
    );
  }
}
