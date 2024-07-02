import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double width;
  final double ratio;
  final int totalValue;

  ProgressIndicatorWidget({
    required this.width,
    required this.ratio,
    required this.totalValue,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: 5,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        AnimatedContainer(
          height: 5,
          width: width * ratio,
          duration: Duration(milliseconds: totalValue),
          decoration: BoxDecoration(
            color: (ratio < 0.3)
                ? Colors.red
                : (ratio < 0.6)
                    ? Colors.orange
                    : (ratio < 0.9)
                        ? Colors.amber
                        : Colors.green,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );
  }
}
