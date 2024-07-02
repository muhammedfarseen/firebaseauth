import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing_applicaation/themes/text_styles.dart';
import 'package:testing_applicaation/widgets/ledger_tile.dart';

class CateringBoycard extends StatelessWidget {
  const CateringBoycard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LedgerTile(
      leading: SvgPicture.asset("assets/bg/Capitan.svg"),
      ontap: () {},
      title: "Catering Boys",
      style: SubHeading2,
      trailing: SvgPicture.asset("assets/bg/right icon.svg"),
    );
  }
}