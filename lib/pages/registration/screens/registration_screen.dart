import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/progress_bar.dart';
import 'package:sf_app/pages/registration/controller/registration_controller.dart';

class RegistrationScreen extends StatefulWidget {
  static String route = 'RegistrationForm';

  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final RegistrationController controller = RegistrationController();
  @override
  void initState() {
    super.initState();
    Get.put(controller);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (controller.currentSelectedViewIndex.value > 0) {
          int index = controller.currentSelectedViewIndex.value;
          index--;

          controller.onChangeView(index);
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: AnimatedContainer(
              duration: const Duration(milliseconds: 900),
              curve: Curves.easeIn,
              child: const CustomeProgressBar()),
          centerTitle: true,
        ),
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeIn,
          padding: const EdgeInsets.only(top: 16),
          child: Obx(
            () => controller.views[controller.currentSelectedViewIndex.value],
          ),
        ),
      ),
    );
  }
}
