import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/theme/app_theme.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

void main() async {
  runApp(GetMaterialApp(
    title: "Ottis Pet",
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.routes,
    builder: (context, child) => MediaQuery(
      data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
      child: child,
    ),
    supportedLocales: [
      const Locale('pt', 'BR'),
    ],
  ));
}
