import 'package:flutter/cupertino.dart';
import 'package:testing_applicaation/themes/app_colours.dart';

class TotalCard extends StatelessWidget {
  const TotalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColourResources.lightWhite,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
              ),
             
              Text("20"),
               SizedBox(),
              Text("250.00"),
            ],
          ),
        ));
  }
}
