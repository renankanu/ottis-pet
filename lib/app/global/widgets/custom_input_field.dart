import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final controller;

  const CustomInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'Campo requerido.';
        }
        return null;
      },
      controller: controller,
      onChanged: onChanged,
      cursorColor: Get.theme.primaryColor,
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
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Icon(
            icon,
            color: Get.theme.primaryColor,
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}
