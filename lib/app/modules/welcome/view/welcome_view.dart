import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/global/widgets/rounded_button.dart';
import 'package:ottis_pet/app/modules/welcome/controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Ottis Pet",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Get.height * 0.05),
            Image.network(
              'https://picsum.photos/200',
              height: Get.height * 0.45,
            ),
            SizedBox(height: Get.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Get.offAndToNamed('/login');
              },
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
      ),
    );
  }
}
