import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/approvel_background.dart';
import 'package:testing_applicaation/themes/dimension.dart';
import 'package:testing_applicaation/themes/text_styles.dart';
import 'package:testing_applicaation/widgets/app_buttons.dart';
import 'package:testing_applicaation/widgets/contactas_buttton.dart';
import 'package:url_launcher/url_launcher.dart';

class ApprovelScreen extends StatefulWidget {
  const ApprovelScreen({super.key});

  @override
  State<ApprovelScreen> createState() => _ApprovelScreenState();
}

class _ApprovelScreenState extends State<ApprovelScreen> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchLink(String url) async {
    final Uri launchUri = Uri.parse(url);
    if (await canLaunchUrl(launchUri)) {
      print('Launching $url');
      await launchUrl(launchUri);
    } else {
      print('Could not launch $url');
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ApprovelBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/bg/approvellogo.png'),
                    ),
                  ),
                ),
              ),
              gap26,
              Text(
                'Pending Approval',
                style: Heading2,
              ),
              gap11,
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        "Your registration is pending admin \n approval. Please",
                    style: SubHeading1,
                    children: [
                      TextSpan(
                        text: " Visit office",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _launchLink(
                              'https://www.google.com/maps/place/Kondotty,+Kerala+673638/@11.1468714,75.9646479,17z/data=!4m6!3m5!1s0x3ba64ee2471144f5:0x8692de4117c315d!8m2!3d11.1456988!4d75.9642632!16zL20vMGNsemxz?entry=ttu'),
                        style: Heading4.copyWith(
                          color: ColourResources.Black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: " with Reference ID: [1123456987]",
                        style: SubHeading1,
                      ),
                    ],
                  ),
                ),
              ),
              gap11,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 78,
                ),
                child: AppButton(
                  ontap: () {
                    _launchLink(
                        'https://www.google.com/maps/place/Kondotty,+Kerala+673638/@11.1468714,75.9646479,17z/data=!4m6!3m5!1s0x3ba64ee2471144f5:0x8692de4117c315d!8m2!3d11.1456988!4d75.9642632!16zL20vMGNsemxz?entry=ttu');
                  },
                  buttontext: 'Direct to Office',
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ContactasButton(
            ontap: () {
              _makePhoneCall('+91 7034149296');
            },
            buttontext: 'Contact Us',
          ),
        ),
      ),
    );
  }
}
