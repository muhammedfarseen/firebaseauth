import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class CommonAppbar extends StatelessWidget implements PreferredSize {
  const CommonAppbar(
      {super.key,
      this.title,
      this.isback,
      this.onpressed,
      this.moreicon,
      this.actionicon});

  final String? title;
  final VoidCallback? onpressed;
  final bool? isback;
  final bool? moreicon;
  final Widget? actionicon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 1,
      surfaceTintColor: Colors.white,
      shadowColor: Colors.black,
      titleSpacing: 10,
      backgroundColor: Colors.white,
      leading: isback ?? true
          ? CupertinoButton(
              padding: EdgeInsets.all(8),
              onPressed: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                'assets/bg/arrow-left.svg',
              ),
            )
          : SizedBox(),
      actions: [
        moreicon ?? false
            ? CupertinoButton(
                padding: EdgeInsets.all(8),
                onPressed: onpressed,
                child: actionicon ?? SizedBox())
            : SizedBox()
      ],
      title: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 60,
        ),
        child: Text(
          title ?? '',
           style: SubHeading1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget get child => throw UnimplementedError();
}
