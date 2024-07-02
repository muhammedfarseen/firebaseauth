// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:testing_applicaation/authentication/login_screen.dart';
// import 'package:testing_applicaation/themes/app_colours.dart';
// import 'package:testing_applicaation/themes/dimension.dart';
// import 'package:testing_applicaation/themes/scaffold_background.dart';
// import 'package:testing_applicaation/themes/text_styles.dart';
// import 'package:testing_applicaation/widgets/app_buttons.dart';

// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key});

//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return ScaffoldBackground(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: Colors.transparent,
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               gap26,
//               gap26,
//               Text(
//                 'OTP',
//                style: Heading1.copyWith(color: ColourResources.Blue),
//               ),
//               gap13,
//               Text(
//                 'We have sent a verification code to your phone number',
//                 style: Heading3.copyWith(color: ColourResources.lightgrey,
//   fontWeight: FontWeight.w400,),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 70,
//               ),
//               OtpTextField(
//                 numberOfFields: 4,
//                 fieldWidth: 60,
//                 borderColor: ColourResources.Blue,
//                 showFieldAsBox: true,
//                 onCodeChanged: (String code) {},
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'Incorrect password',
//                 style: TextStyle(color: Colors.red),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CupertinoButton(
//                   child: Text(
//                     'Resend (0:20)',
//                  style: Body2.copyWith(color: ColourResources.Blue),
//                     textAlign: TextAlign.end,
//                   ),
//                   padding: EdgeInsets.all(0),
//                   onPressed: () {}),
//               gap26,
//               gap26,
//               AppButton(
//                 buttontext: 'Login',
//                 ontap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LoginPage(),
//                       ));
//                 },
//               ),
//             ],
//           ),
//         ),
//         // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         // floatingActionButton: Padding(
//         //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         //   child: AppButton(
//         //     buttontext: 'Login',
//         //     ontap: () {
//         //       Navigator.push(
//         //           context,
//         //           MaterialPageRoute(
//         //             builder: (context) => Dashboard(),
//         //           ));
//         //     },
//         //   ),
//         // ),
//       ),
//     );
//   }
// }
