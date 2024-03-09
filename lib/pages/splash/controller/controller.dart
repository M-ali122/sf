import 'package:get/get.dart';

import '../../../registration/registration_form.dart';


class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashService();
  }

  void splashService() async {
    await Future.delayed(const Duration(seconds: 3));

    Get.to(() => RegistrationForm());

  }

}
