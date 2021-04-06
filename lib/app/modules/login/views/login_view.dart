import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/global/colors.dart';
import 'package:ottis_pet/app/global/text_style.dart';
import 'package:ottis_pet/app/global/widgets/custom_input_field.dart';
import 'package:ottis_pet/app/global/widgets/custom_button.dart';
import 'package:ottis_pet/app/modules/login/views/widgets/container_social_media.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ottis_pet/app/modules/login/views/widgets/or_divider.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: kDodgerBlue,
            ),
            height: Get.height * .28,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Ottis Pet",
                    style: kBaseStyle.copyWith(
                        color: kWhite,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        SizedBox(height: Get.height * 0.04),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 2,
                          shadowColor: kBlackRock,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 24, horizontal: 12),
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
                          buttonColor: kDodgerBlue,
                          textColor: kWhite,
                          label: 'Login'.toUpperCase(),
                          onTap: () {},
                        ),
                        SizedBox(height: Get.height * 0.02),
                        OrDivider(),
                        SizedBox(height: Get.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ContainerSocialMedia(
                              background: kChambray,
                              icon: FontAwesomeIcons.facebookF,
                            ),
                            ContainerSocialMedia(
                              background: kPunch,
                              icon: FontAwesomeIcons.google,
                            ),
                            ContainerSocialMedia(
                              background: kBlack,
                              icon: FontAwesomeIcons.apple,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
