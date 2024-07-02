import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing_applicaation/authentication/approvel_screen.dart';
import 'package:testing_applicaation/widgets/app_bar.dart';
import 'package:testing_applicaation/widgets/app_buttons.dart';

class TermsconditionScreen extends StatefulWidget {
  const TermsconditionScreen({super.key});

  @override
  State<TermsconditionScreen> createState() => _TermsconditionScreenState();
}

class _TermsconditionScreenState extends State<TermsconditionScreen> {
  final List<String> terms = [
    'You must be at least 16 years old to use this service.',
    'You are responsible for keeping your password secure.',
    'Your use of the service is at your own risk.',
    'You must not use the service for any illegal activities.',
    'We reserve the right to terminate your account at any time.',
    'Your data will be stored in accordance with our privacy policy.',
    'You must not attempt to hack or misuse the service.',
    'We are not responsible for any loss or damage caused by the service.',
    'You must provide accurate information when creating an account.',
    'You agree to comply with all applicable laws and regulations.'
  ];

  final List<bool> isChecked = List.generate(10, (index) => false);
  bool acceptAllChecked = false;

  void _acceptAllTerms(bool? value) {
    setState(() {
      acceptAllChecked = value!;
      for (int i = 0; i < isChecked.length; i++) {
        isChecked[i] = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(
        title: 'Terms & Conditions',
        isback: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: terms.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(terms[index]),
                    value: isChecked[index],
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked[index] = value!;
                        if (!value) {
                          acceptAllChecked = false;
                        } else if (isChecked.every((element) => element)) {
                          acceptAllChecked = true;
                        }
                      });
                    },
                  );
                },
              ),
            ),
            // CheckboxListTile(
            //   title: CupertinoButton(
            //     child: Text(
            //       'Accept All Terms & Conditions',
            //       style: termsandcondition,
            //       textAlign: TextAlign.end,
            //     ),
            //     onPressed: ()
            //   ),
            //   value: acceptAllChecked,
            //   onChanged: _acceptAllTerms,
            // ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: AppButton(
              ontap: () {
                if (isChecked.contains(false)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please accept all terms and conditions.'),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('All terms and conditions accepted.'),
                    ),
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovelScreen(),
                      ));
                }
              },
              buttontext: 'Accept All Terms & Conditions')),
    );
  }
}
