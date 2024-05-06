  import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/coustom_listile.dart';
import 'package:sf_app/helper/view/doubled_outline_button.dart';
import 'package:sf_app/client_side_design/message/controller/message_controller.dart';
import 'package:sf_app/client_side_design/products/controllers/product_controller.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../../resources/color/app_color.dart';

class Inbox extends GetWidget<MessageController> {
  static const String route = "Inbox";

  Inbox({super.key});

  final theme = Get.theme;

var listdes = [
    'Still available?',
    'Is it possible to send it sooner',
    'Is there other colors ?'
  ];

var listdate = [
    '20:20 Pm',
    'Yesterday',
    'Jan 18, 2024'
  ];
  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());
    return GetBuilder<MessageController>(
      init: MessageController(),
      builder: (controller) {
        return Scaffold(
          body: ListView(
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: SvgPicture.string(Appicons.backIcon)),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      "Inbox",
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp,
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: DoubledOutlineButton(
                  titleOne: 'information',
                  titleTwo: 'notification',
                  onIndexChanged: (value) async {
                    productController.chnageIndexValue(value);
                  },
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Obx(() => TextField(
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 20),
                    fillColor: AppColor.GreyScale50,
                    focusColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 10),
                      child: Icon(Icons.search,
                          size: 30.sp, color: AppColor.GreyScale400),
                    ),
                    hintText: productController.productOtption.value == 0
                        ? 'Search messages'
                        : 'Search notification',
                    hintStyle: const TextStyle(color: AppColor.GreyScale400),
                  ),
                ),)
              ),
              Obx(() => Visibility(
                    visible: controller.selectedIndex.value == 1 ? true : false,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "Today",
                            style: theme.textTheme.subtitle2,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Container(
                              width: 323.w,
                              height: 1.5.h,
                              color: Color.fromRGBO(238, 238, 238, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 20.h,),
              SizedBox(
                width: Get.width,
                height: 580.h,
                child: Obx(() {
                  if (productController.productOtption.value == 0) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        if(index == 1){
                          return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13.0),
                          child: CoustomListile(
                            countDot: true,
                             des: listdes[index],
                             date: listdate[index],
                          ),
                        );
                        }else{
                          return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13.0),
                          child: CoustomListile(
                            des: listdes[index],
                             date: listdate[index],
                          ),
                        );
                        }
                      },
                    );
                  } else {
                    return Center(
                      child: Text(
                        'No notification found',
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    );
                  }
                }),
              ),
            ],
          ),
        );
      },
    );
  }
}
