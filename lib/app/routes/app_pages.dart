import 'package:ottis_pet/app/modules/initial/bindings/initial_binding.dart';
import 'package:ottis_pet/app/modules/initial/views/initial_view.dart';
import 'package:ottis_pet/app/modules/welcome/binding/welcome_binding.dart';
import 'package:ottis_pet/app/modules/welcome/view/welcome_view.dart';
import 'package:ottis_pet/app/routes/app_routes.dart';
import 'package:get/get.dart';

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
    )
  ];
}
