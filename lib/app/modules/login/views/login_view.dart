import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/global/colors.dart';
import 'package:ottis_pet/app/global/text_style.dart';
import 'package:ottis_pet/app/global/widgets/custom_input_field.dart';
import 'package:ottis_pet/app/global/widgets/custom_button.dart';
import 'package:ottis_pet/app/routes/app_routes.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCreamCan,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 2,
                    shadowColor: kBlackRock,
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          CustomInputField(hintText: 'Email'),
                          SizedBox(height: Get.height * 0.02),
                          CustomInputField(hintText: 'Password'),
                          SizedBox(height: Get.height * 0.05),
                          Text('Não tem conta? Crie uma agora!')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.02),
                  CustomButton(
                    label: 'Login',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
