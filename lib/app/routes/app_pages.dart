import 'package:get/get.dart';

import 'package:ottis_pet/app/modules/home/bindings/home_binding.dart';
import 'package:ottis_pet/app/modules/home/views/home_view.dart';
import 'package:ottis_pet/app/modules/initial/bindings/initial_binding.dart';
import 'package:ottis_pet/app/modules/initial/views/initial_view.dart';
import 'package:ottis_pet/app/modules/login/bindings/login_binding.dart';
import 'package:ottis_pet/app/modules/login/views/login_view.dart';
import 'package:ottis_pet/app/modules/welcome/binding/welcome_binding.dart';
import 'package:ottis_pet/app/modules/welcome/view/welcome_view.dart';
import 'package:ottis_pet/app/routes/app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
