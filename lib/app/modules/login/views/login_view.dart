import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/global/colors.dart';
import 'package:ottis_pet/app/global/text_style.dart';
import 'package:ottis_pet/app/global/widgets/custom_input_field.dart';
import 'package:ottis_pet/app/global/widgets/custom_button.dart';
import 'package:ottis_pet/app/modules/login/views/widgets/container_social_media.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ottis_pet/app/modules/login/views/widgets/or_divider.dart';
import 'package:ottis_pet/generated/locales.g.dart';

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
                    LocaleKeys.global_app_name.tr,
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
                            child: Form(
                              autovalidateMode: controller.hasError.value
                                  ? AutovalidateMode.onUserInteraction
                                  : AutovalidateMode.disabled,
                              key: controller.formKey,
                              child: Column(
                                children: [
                                  CustomInputField(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: controller.usernameCtrl,
                                    hintText: LocaleKeys.login_email.tr,
                                    onChanged: (value) {},
                                  ),
                                  SizedBox(height: Get.height * 0.02),
                                  CustomInputField(
                                    keyboardType: TextInputType.visiblePassword,
                                    hintText: LocaleKeys.login_password.tr,
                                    obscureText: !controller.showPassword.value,
                                    isPassword: true,
                                    onPressShowHidePassword: () {
                                      controller.showPassword.value =
                                          !controller.showPassword.value;
                                    },
                                  ),
                                  SizedBox(height: Get.height * 0.05),
                                  Text(LocaleKeys.login_no_have_account.tr)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.02),
                        CustomButton(
                          buttonColor: kDodgerBlue,
                          textColor: kWhite,
                          label: LocaleKeys.login_login.tr.toUpperCase(),
                          onTap: () {
                            controller.login();
                          },
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
