import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ottis_pet/app/global/images.dart';
import 'package:ottis_pet/app/global/text_style.dart';
import 'package:ottis_pet/app/global/widgets/custom_input_field.dart';
import 'package:ottis_pet/app/global/widgets/rounded_button.dart';
import 'package:ottis_pet/app/routes/app_routes.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Ottis Pet",
                  style: kBaseStyle.copyWith(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: Get.height * 0.05),
                Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      child: Column(
                        children: [
                          CustomInputField(hintText: 'Email'),
                          SizedBox(height: Get.height * 0.02),
                          CustomInputField(hintText: 'Password'),
                          SizedBox(height: Get.height * 0.05),
                          RoundedButton(
                            text: "LOGIN",
                            press: () {
                              Get.offAndToNamed(Routes.HOME);
                            },
                            color: Get.theme.accentColor,
                          ),
                          RoundedButton(
                            text: "REGISTRAR",
                            color: Get.theme.primaryColorLight,
                            textColor: Colors.black,
                            press: () {
                              Get.offAndToNamed('/signup');
                            },
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
