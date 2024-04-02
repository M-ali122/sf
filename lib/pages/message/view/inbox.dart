import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/coustom_listile.dart';
import 'package:sf_app/helper/view/doubled_outline_button.dart';
import 'package:sf_app/pages/message/controller/message_controller.dart';
import 'package:sf_app/pages/products/controllers/product_controller.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../../helper/view/notification_tile.dart';
import '../../../resources/color/app_color.dart';

class Inbox extends GetWidget<MessageController> {
  static const String route = "Inbox";
   Inbox({super.key});

  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
  ProductController productController = Get.put(ProductController());
    return GetBuilder<MessageController>(
      init: MessageController(),
      builder: (controller) {
        return Scaffold(
          // backgroundColor: AppColor.backGroundSilver,
          body: ListView(
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    SvgPicture.string(Appicons.backIcon),
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
                            titleTwo: 'Review',
                            onIndexChanged: (value)async{
                productController.chnageIndexValue(value);
                            },
                          ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
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
                    hintText: 'Search messages',
                    hintStyle: const TextStyle(color: AppColor.GreyScale400),
                  ),
                ),
              ),
             Obx(() =>  Visibility(
               visible: controller.selectedIndex.value == 1 ? true :false,
               child: Row(
                 children: [
                   Padding(
                     padding:  EdgeInsets.symmetric(
                         vertical: 10.0),
                     child: Text(
                       "Today",style: theme.textTheme.subtitle2,
          
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
             ),),
             SizedBox(height: 20.h,),
          Container(
                    width: Get.width,
                    height: 580.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Obx(() =>  productController.productOtption.value == 0
                            ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CoustomListile(),
                            )
                            : NotificationTile());
                      },
                    ),
                  ),
          
              // SizedBox(height: 30.h),
              // CoustomListile(),
              // SizedBox(height: 30.h),
              // CoustomListile(
              //   countDot: true,
              // ),
              // SizedBox(height: 30.h),
              // CoustomListile(),
            ],
          ),
        );
      },
    );
  }
}
