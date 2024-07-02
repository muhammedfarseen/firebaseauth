import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      // width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/background.png"))),
      child: child,
    );
  }
}
