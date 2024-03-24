// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sf_app/pages/registration/controller/registration_controller.dart';

class CustomeProgressBar extends GetWidget<RegistrationController> {
  final Color? bg, fg;
  const CustomeProgressBar({
    super.key,
    this.fg,
    this.bg,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(
      init: Get.find<RegistrationController>(),
      builder: (controller) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 900),
          child: SizedBox(
            width: 216.w,
            child: Obx(
              () => LinearProgressIndicator(
                minHeight: 8,
                value: handlePercentage(
                    controller.currentSelectedViewIndex.value,
                    controller.views.length),
                borderRadius: BorderRadius.circular(12),
                backgroundColor: const Color(0xffEEEEEE),
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xff72975E)),
              ),
            ),
          ),
        );
      },
    );
  }

  double handlePercentage(int index, int totalViews) {
    index++; //add one because of indexing
    return (index / totalViews);
  }
}
