import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/routes/app_routes.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();

  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  RxBool loading = false.obs;
  RxBool hasError = false.obs;
  RxBool showPassword = false.obs;

  void login() async {
    if (formKey.currentState.validate()) {
      Get.offAllNamed(Routes.HOME);
      return;
    }
    hasError.value = true;
  }

  @override
  void onClose() {}
}
