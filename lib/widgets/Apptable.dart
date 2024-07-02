import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing_applicaation/themes/app_colours.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class appTable extends StatelessWidget {
  const appTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        border: TableBorder.all(
            color: ColourResources.greywhite,
            style: BorderStyle.solid,
            width: .5),
        children: [
          TableRow(
              decoration: BoxDecoration(color: ColourResources.lightWhite),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Column(children: [Text('Item Name', style: Body2.copyWith(fontWeight: FontWeight.w500),)]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [Text('Qty',style: Body2.copyWith(fontWeight: FontWeight.w500),)]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [Text('Rate',style: Body2.copyWith(fontWeight: FontWeight.w500),)]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [Text('Amount', style: Body2.copyWith(fontWeight: FontWeight.w500),)]),
                ),
              ]),
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                SvgPicture.asset("assets/bg/add.svg"),
                Text('Tea'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [Text('10')]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [Text('10.00')]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [Text('100.00')]),
            ),
          ]),
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                SvgPicture.asset("assets/bg/add.svg"),
                Text('Coffee')
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('10'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('15.00'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('150.00'),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
