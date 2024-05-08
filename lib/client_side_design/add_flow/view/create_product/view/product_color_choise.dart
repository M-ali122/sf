import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/controller/button_color_condition.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/controller/create_product_controller.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/controller/tapable_colors_circleavatar.dart';

class ProductColorChiose extends GetWidget<CreateProductController> {
  const ProductColorChiose({super.key});
  @override
  Widget build(BuildContext context) {
    final ColorController colorController = Get.put(ColorController());
    final ColorControllerButton colorControllerButton =
        Get.put(ColorControllerButton());

    return Scaffold(
      body:
          ListView(padding: EdgeInsets.symmetric(horizontal: 24.w), children: [
        // SizedBox(
        //   height: 20.h,
        // ),
        Row(
          children: [
            Text(
              'Fill the information \nbelow',
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(33, 33, 33, 1)),
            ),
          ],
        ),
        20.height,
        Row(
          children: [
            Text(
              'Product Color Options',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(33, 33, 33, 1)),
            ),
          ],
        ),
        SizedBox(height: 15.h,),
        // Obx(() => SizedBox(
        //       height: 300.h,
        //       child: GridView.count(crossAxisCount: 6,crossAxisSpacing: 10.0,mainAxisSpacing: 10.0, children: colorController.colorWidgets,)
        //     ))
        10.height,
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: colorController.colorNames.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6, mainAxisSpacing: 10.0),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                colorController.checkColor(index);
              },
              child: Column(
                children: [
                  Obx(
                    () => Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorController.colors[index],
                          border: Border.all(width: .2)),
                      child: colorController.selectedColour == index
                          ? const Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                  Text(
                    colorController.colorNames[index],
                    style: TextStyle(fontSize: 12.sp),
                  )
                ],
              ),
            );
          },
        ),

         Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Row(
            children: [
              Text(
                'Product Size Options',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(33, 33, 33, 1)),
              ),
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: colorControllerButton.boxNames.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6, mainAxisSpacing: 5.0),
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  colorControllerButton.changeSize(index);
                },
                child: Obx(
                  () => Column(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: colorControllerButton.selectedSize == index
                              ? const Color(0xffC9B372)
                              : const Color(0xffF3F3F3),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Text(
                          colorControllerButton.boxNames[index],
                          style: colorControllerButton.selectedSize == index
                              ? const TextStyle(color: Colors.white)
                              : const TextStyle(color: Colors.black),
                        )),
                      ),
                    ],
                  ),
                ));
          },
        ),
        40.height,

        // SizedBox(
        //     height: 280.h,
        //     child: GridView.builder(
        //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //             crossAxisCount: 6),
        //         itemBuilder: (context, index) {
        //           return GestureDetector(
        //             onTap: () {
        //               _colorControllerButton.setSelectedIndex(index);
        //             },
        //             child: Obx(() {
        //               final bool isSelected =
        //                   _colorControllerButton.selectedIndex.value ==
        //                       index;
        //               final Color boxColor = isSelected
        //                   ? Color(0xffC9B372)
        //                   : Color(0xffF3F3F3);
        //               return Container(
        //                 margin: const EdgeInsets.all(8),
        //                 decoration: BoxDecoration(
        //                   shape: BoxShape.circle,
        //                   color: boxColor,
        //                   borderRadius: BorderRadius.circular(50),
        //                 ),
        //                 child: Center(
        //                   child: Text(
        //                     _colorControllerButton.boxNames[index],
        //                     textAlign: TextAlign.center,
        //                     style: const TextStyle(
        //                         fontSize: 16,
        //                         fontWeight: FontWeight.bold,
        //                         color: Color(0xff35383F)),
        //                   ),
        //                 ),
        //               );
        //             }),
        //           );
        //         })),

        AppButton(
            title: 'Continue',
            onTap: () async {
              controller.productScreenTwo();
            }),
        const SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
