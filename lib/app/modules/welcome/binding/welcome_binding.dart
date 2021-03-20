import 'package:get/get.dart';
import 'package:ottis_pet/app/modules/welcome/controllers/welcome_controller.dart';

class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}
