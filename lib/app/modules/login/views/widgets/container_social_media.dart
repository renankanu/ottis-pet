import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ottis_pet/app/global/colors.dart';

class ContainerSocialMedia extends StatelessWidget {
  final Color background, iconColor;
  final IconData icon;

  const ContainerSocialMedia({
    Key key,
    this.background,
    this.icon,
    this.iconColor = kWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          color: background,
        ),
        child: Center(
          child: FaIcon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
