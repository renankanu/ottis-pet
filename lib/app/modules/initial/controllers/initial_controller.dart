import 'package:get/get.dart';
import 'package:ottis_pet/app/routes/app_routes.dart';

class InitialController extends GetxController {
  var auth;

  String verifyAuth() {
    return Routes.WELCOME;
  }
}
