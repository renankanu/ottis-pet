import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/modules/initial/controllers/initial_controller.dart';
import 'package:splashscreen/splashscreen.dart';

class InitialView extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SplashScreen(
            seconds: 5,
            backgroundColor: Get.theme.primaryColor,
            navigateAfterSeconds: controller.verifyAuth(),
            loaderColor: Colors.transparent,
          ),
          Container(
            child: Center(
              child: Image.asset(
                'assets/images/ottis_pet_logo.png',
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
