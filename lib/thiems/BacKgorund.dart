import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container( height:double.infinity,width: double.infinity, child: Image.asset("Assets/Images/background.png"),);
  }
}