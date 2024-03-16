import 'package:get/get.dart';
import 'package:sf_app/pages/welcome_screen/welcome_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashService();
  }

  void splashService() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.off(() => WelcomeView());
  }
}
