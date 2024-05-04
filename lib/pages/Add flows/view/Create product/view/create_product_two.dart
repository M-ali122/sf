import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/pages/Add%20flows/view/Create%20product/controller/button_color_condition.dart';
import 'package:sf_app/pages/Add%20flows/view/Create%20product/controller/tapable_colors_circleavatar.dart';
import 'package:sf_app/pages/Add%20flows/view/Create%20product/view/screen_three.dart';

class ProductScreenTwo extends StatelessWidget {
  final ColorController colorController = Get.put(ColorController());
  final ColorControllerButton colorControllerButton =
      Get.put(ColorControllerButton());
  ProductScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    const Text(
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
                  child: Row(
                    children: [
                      Text(
                        'Product Color Options',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(33, 33, 33, 1)),
                      ),
                    ],
                  ),
                ),
                // Obx(() => SizedBox(
                //       height: 300.h,
                //       child: GridView.count(crossAxisCount: 6,crossAxisSpacing: 10.0,mainAxisSpacing: 10.0, children: colorController.colorWidgets,)
                //     ))

                GridView.builder(
                  shrinkWrap: true,
                  itemCount: colorController.colorNames.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6, mainAxisSpacing: 10.0),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        colorController.checkColor(index);
                      },
                      child: Column(
                        children: [
                          Obx(() => Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: colorController.colors[index],border: Border.all(width: .2)),
                      
                      child: colorController.selectedColour == index ? const Icon(Icons.check,color: Colors.white,) : null ,
                      
                          ),),
                          Text(
                            colorController.colorNames[index],
                            style: const TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    );
                  },
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Text(
                        'Product Size Options',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(33, 33, 33, 1)),
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
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
                                  color: colorControllerButton.selectedSize ==
                                          index
                                      ? const Color(0xffC9B372)
                                      : const Color(0xffF3F3F3),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                    child: Text(
                                        colorControllerButton.boxNames[index],style: TextStyle(fontSize: 17),)),
                              ),
                            ],
                          ),
                        ));
                  },
                ),
                SizedBox(height: 35.h,),

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
                    onTap: () {
                      Get.to( ScreenThree());
                    })
              ]))),
    );
  }
}
