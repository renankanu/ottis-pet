import 'package:flutter/material.dart';
import 'package:ottis_pet/app/global/colors.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/generated/locales.g.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: Get.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              LocaleKeys.login_or.tr,
              style: TextStyle(
                color: kBlackRock,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: kBlackRock,
        height: 1.5,
      ),
    );
  }
}
