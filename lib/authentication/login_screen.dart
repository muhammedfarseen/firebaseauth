import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_applicaation/authentication/forget_screen.dart';
import 'package:testing_applicaation/provider.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/dimension.dart';
import 'package:testing_applicaation/themes/scaffold_background.dart';
import 'package:testing_applicaation/themes/sizedBox.dart';
import 'package:testing_applicaation/themes/text_styles.dart';
import 'package:testing_applicaation/widgets/app_buttons.dart';
import 'package:testing_applicaation/widgets/app_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return ScaffoldBackground(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                gap26,
                gap26,
                Text(
                  'Login',
                  style: Heading1.copyWith(color: ColourResources.Blue),
                ),
                gap13,
                Text(
                  'Welcome back, and login to your \naccount',
                  style: Body1.copyWith(
                    color: ColourResources.lightgrey,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                100.hBox,
                AppTextfield(
                    validator: (value) {
                      if ((value == null || value.isEmpty)) {
                        return "Please enter some text";
                      } else if (passwordcontroller.text.length != 5) {
                        return "atlist 5";
                      }
                      return null;
                    },
                    prefxicon: const Icon(Icons.person),
                    hinttext: 'Enter username',
                    labelname: "Username",
                    controller: usernamecontroller,
                    suffixicon: null),
                const SizedBox(
                  height: 20,
                ),
                AppTextfield(
                    validator: (value) {
                      if ((value == null || value.isEmpty)) {
                        return "Please enter some text";
                      } else if (passwordcontroller.text.length != 5) {
                        return "atlist 5";
                      }
                      return null;
                    },
                    prefxicon: const Icon(Icons.lock),
                    hinttext: 'Enter password',
                    labelname: "Password",
                    controller: passwordcontroller,
                    suffixicon: null),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: CupertinoButton(
                //       padding: const EdgeInsets.all(0),
                //       onPressed: () {
                //         Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) => const LoginWithNumber(),
                //             ));
                //       },
                //       child: Text(
                //         'Forgot password?',
                //         style: Body2.copyWith(color: ColourResources.Blue),
                //         textAlign: TextAlign.end,
                //       )),
                // ),
                AppButton(
                  buttontext: 'Login',
                  ontap: () {
                    print(
                      usernamecontroller.text.length,
                    );
                    print(passwordcontroller.text.length);
                    if (_formKey.currentState!.validate()) {
                      return Provider.of<providerdata>(context, listen: false)
                          .postdata(passwordcontroller.text,
                              usernamecontroller.text, context);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Form not filled"),
                        backgroundColor: Colors.red,
                        elevation: 10,
                        behavior: SnackBarBehavior.floating,
                        margin: EdgeInsets.all(20),
                      ));
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.red,
                    child: Column(
                      children: [
                        Text(Provider.of<providerdata>(context, listen: false)
                                .Prodectdata
                                ?.data!
                                .table?[0]
                                .dbName
                                .toString() ??
                            ""),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// web       1:176161723550:web:6b551ca6cccb18b9e8178f
// android   1:176161723550:android:b2a2fc3676c98cb3e8178f
// ios       1:176161723550:ios:23a059a807f57befe8178f
// macos     1:176161723550:ios:23a059a807f57befe8178f
// windows   1:176161723550:web:aa5ddf3b39367f9ee8178f