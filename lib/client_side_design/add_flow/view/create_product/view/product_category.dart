import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/controller/create_product_controller.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_product/controller/slider_controller.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/product_category_tabs.dart';

class ScreenThree extends GetWidget<CreateProductController> {
  Widget build(BuildContext context) {
    final SliderController sliderController = Get.put(SliderController());
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children: [
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Row(
              children: [
                Text(
                  'Product Price',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(33, 33, 33, 1)),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text('${sliderController.sliderValue.toInt()} ' +
                    'SAR')), // Display the slider value
                Obx(
                  () => Slider(
                    value: sliderController.sliderValue.value,
                    min: 500,
                    max: 2000,
                    onChanged: (value) {
                      sliderController.updateSliderValue(value);
                    },
                    activeColor:
                        const Color(0xffC9B372), // Set the slider active color
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Row(
              children: [
                Text(
                  'Product Category',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(33, 33, 33, 1)),
                ),
              ],
            ),
          ),
          ProductCategoryTabs(
            titleOne: 'Men',
            titleTwo: 'Women',
            titleThree: 'Shoe',
            titleFour: 'Bag',
            titleFive: 'Beauty',
            titleSix: 'Lifestyle',
            onIndexChanged: (val) {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Row(
              children: [
                Text(
                  'Product sub Category',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(33, 33, 33, 1)),
                ),
              ],
            ),
          ),
          ProductSubCategoryTabs(
              titleOne: 'Shirt',
              titleTwo: 'Pants',
              titleThree: 'Underwear',
              titleFour: 'Jacket',
              onIndexChanged: (val) {}),
          40.height,
          AppButton(
              title: 'Continue',
              onTap: () async {
                controller.screenThree();
              }),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
