import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ottis_pet/app/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'generated/locales.g.dart';

void main() async {
  runApp(GetMaterialApp(
    title: "Ottis Pet",
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.routes,
    locale: Get.deviceLocale,
    translationsKeys: AppTranslation.translations,
    defaultTransition: Transition.fade,
    localizationsDelegates: [GlobalMaterialLocalizations.delegate],
    supportedLocales: [
      const Locale('pt', 'BR'),
      const Locale('en', 'US'),
    ],
  ));
}
