import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testing_applicaation/themes/text_styles.dart';

class CustomExpansionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        "data(3/10)",
        style: SubHeading2,
      ),
      leading: SvgPicture.asset("assets/bg/Capitan.svg"),
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/bg/profile.png"),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    left: 25,
                    child: CupertinoButton(
                      onPressed: () {
                        deleteadmins(context);
                      },
                      child: Container(
                        child: SvgPicture.asset("assets/bg/icon.svg"),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  void deleteadmins(BuildContext context) {
    // Implement the deleteadmins function according to your requirements
  }
}

class ProfileStack extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onDelete;

  const ProfileStack({
    Key? key,
    required this.imagePath,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Image.asset(imagePath),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 25,
          left: 25,
          child: CupertinoButton(
            onPressed: onDelete,
            child: Container(
              child: SvgPicture.asset("assets/bg/icon.svg"),
            ),
          ),
        ),
      ],
    );
  }
}
