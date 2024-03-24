import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/progress_bar.dart';
import 'package:sf_app/pages/registration/controller/registration_controller.dart';

class RegistrationScreen extends StatelessWidget {
  static String route = 'RegistrationForm';

  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RegistrationController controller = RegistrationController();
    Get.put(controller);
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => CustomeProgressBar(
            progressValue: controller.currentSelectedViewIndex.value,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.views[controller.currentSelectedViewIndex.value],
      ),
    );
  }
}
