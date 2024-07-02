import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class CapitanPeyment extends StatelessWidget {
  const CapitanPeyment({
    super.key,
    required this.trailing,
    this.ontap,
    required this.title,
  });
  final String trailing;
  final VoidCallback? ontap;
  final String title;

  @override
  Widget build(BuildContext context) {
    Future<void> _makePhoneCall(String phoneNumber) async {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: CupertinoButton(
        onPressed: ontap,
        child: Card(
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
            subtitle: Text(
              "Ref.ID : INV123",
              style: Caption1.copyWith(color: ColourResources.grey)
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
               style: Caption1.copyWith(color: ColourResources.grey)
                ),
                Text(
                  trailing,
                  style: SubHeading2.copyWith(color: ColourResources.Green),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
