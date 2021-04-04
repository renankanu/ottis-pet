import 'package:flutter/material.dart';
import 'package:ottis_pet/app/global/colors.dart';
import 'package:ottis_pet/app/global/text_style.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final bool isLoading;
  final Color buttonColor, textColor, loadingColor;
  const CustomButton({
    Key key,
    this.label,
    this.onTap,
    this.isLoading = false,
    this.buttonColor = kDodgerBlue,
    this.textColor = kWhite,
    this.loadingColor = kWhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      onTap: onTap,
      child: Ink(
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: buttonColor,
        ),
        child: Center(
          child: isLoading
              ? Container(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(loadingColor),
                    strokeWidth: 2,
                  ),
                )
              : Text(
                  label,
                  style: kBaseStyle.copyWith(
                      color: textColor, fontWeight: FontWeight.w500),
                ),
        ),
      ),
    );
  }
}
