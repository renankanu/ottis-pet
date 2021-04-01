import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ottis_pet/app/global/colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCornflowerBlue,
      body: Container(
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 200,
          ),
        ),
      ),
    );
  }
}
