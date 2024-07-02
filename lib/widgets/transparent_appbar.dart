import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class TransparentAppbar extends StatelessWidget implements PreferredSize {
  const TransparentAppbar({super.key, this.appbartitle, this.isback});

  final String? appbartitle;
  final bool? isback;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isback ?? true
          ? CupertinoButton(
              padding: EdgeInsets.all(8),
              onPressed: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                'assets/bg/arrow-left.svg',
                height: 32,
                width: 32,
              ),
            )
          : SizedBox(),
      centerTitle: true,
      title: Text(
        appbartitle ?? '',
        style: SubHeading1.copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
