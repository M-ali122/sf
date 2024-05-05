import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/product_bottom_sheet_tabs.dart';
import 'package:sf_app/helper/view/product_category_tabs.dart';
import 'package:sf_app/pages/Add%20flows/view/Create%20product/controller/slider_controller.dart';

class ScreenThree extends StatelessWidget {
  final SliderController controller = Get.put(SliderController());
   ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
           const Row(
                  children: [
                    Text(
                      'Fill the information \nbelow',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(33, 33, 33, 1)),
                    ),
                  ],
                ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child:  Row(
                children: [
                  Text('Product Price',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(33, 33, 33, 1)),),
                ],
              ),
            ),
            Center( 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => Text('${controller.sliderValue.toInt()} ' + 'SAR')), // Display the slider value
                  Obx(() => Slider(
                    
                    value: controller.sliderValue.value,
                    min: 500,
                    max: 2000,
                    onChanged: (value) {
                      controller.updateSliderValue(value);
                    },
                    activeColor: const Color(0xffC9B372), // Set the slider active color
                    
                  ),)
                ],
              ),
            ),
        const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child:  Row(
                children: [
                  Text('Product Category',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(33, 33, 33, 1)),),
                ],
              ),
            ),
            ProductCategoryTabs(titleOne: 'Men', titleTwo: 'Women', titleThree: 'Shoe', titleFour: 'Bag', titleFive:'Beauty',titleSix: 'Lifestyle', onIndexChanged: (val){},),
            


          ],
        ),
      )),
    );
  }
}
