import 'package:get/get.dart';
import 'package:ottis_pet/app/routes/app_routes.dart';

class WelcomeController extends GetxController {
  void navigateLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }
}
