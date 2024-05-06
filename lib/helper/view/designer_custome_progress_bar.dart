// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20product/controller/create_product_controller.dart';

class DesignerSideCustomeProgressBar extends GetWidget<CreateProductController> {
  final Color? bg, fg;
  const DesignerSideCustomeProgressBar({
    super.key,
    this.fg,
    this.bg,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateProductController>(
      init: Get.put(CreateProductController())  ,
      builder: (controller) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 900),
          child: SizedBox(
            width: 216.w,
            child: Obx(
              () => LinearProgressIndicator(
                minHeight: 8,
                value: handlePercentage(
                    controller.currentSelectIndexView.value,
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
