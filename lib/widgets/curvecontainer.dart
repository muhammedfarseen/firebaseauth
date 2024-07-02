import 'package:flutter/material.dart';

class Curvecontainer extends StatelessWidget {
  const Curvecontainer({super.key, required this.row});
  final Widget row;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        
        width: MediaQuery.of(context).size.width,
        // height: 63,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: row,
      ),
    );
  }
}
