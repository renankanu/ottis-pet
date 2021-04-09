import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/global/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isPassword;
  final Function onPressShowHidePassword;

  const CustomInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.isPassword = false,
    this.onPressShowHidePassword,
  }) : super(key: key);

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'Campo requerido.';
        }
        return null;
      },
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      onChanged: widget.onChanged,
      cursorColor: Get.theme.primaryColor,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        isDense: true,
        prefixIconConstraints: BoxConstraints(maxHeight: 20),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: const BorderSide(color: Colors.grey, width: 1),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: const BorderSide(color: kPersimmon, width: 1),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: const BorderSide(color: kPersimmon, width: 1),
        ),
        errorStyle: TextStyle(color: kPersimmon),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Icon(
            widget.icon,
            color: Get.theme.primaryColor,
          ),
        ),
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  widget.obscureText
                      ? FontAwesomeIcons.solidEye
                      : FontAwesomeIcons.solidEyeSlash,
                  color: Colors.grey,
                  size: 16,
                ),
                onPressed: widget.onPressShowHidePassword,
              )
            : null,
      ),
    );
  }
}
