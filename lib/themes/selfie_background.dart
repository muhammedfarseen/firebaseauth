import 'package:flutter/cupertino.dart';
class SelfieBackground extends StatelessWidget {
  const SelfieBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg/selfiebg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}