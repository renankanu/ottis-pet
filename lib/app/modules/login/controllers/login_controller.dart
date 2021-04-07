import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/routes/app_routes.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxBool loading = false.obs;

  void login() async {
    if (formKey.currentState.validate()) {
      Get.offAllNamed(Routes.HOME);
      return;
    }
  }

  @override
  void onClose() {}
}
