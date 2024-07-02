import 'package:flutter/cupertino.dart';
class ApprovelBackground extends StatelessWidget {
  const ApprovelBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg/approvelbg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}

