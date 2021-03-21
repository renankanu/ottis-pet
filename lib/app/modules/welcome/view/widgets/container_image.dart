import 'package:flutter/material.dart';
import 'package:ottis_pet/app/global/colors.dart';

class ContainerImage extends StatelessWidget {
  final Widget child;
  final Color background;

  const ContainerImage({Key key, this.child, this.background})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      width: double.infinity,
      decoration: BoxDecoration(
        color: background ?? kCreamCan,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}
