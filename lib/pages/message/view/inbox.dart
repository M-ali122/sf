import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/coustom_listile.dart';
import 'package:sf_app/pages/message/controller/message_controller.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../../helper/view/notification_tile.dart';
import '../../../resources/color/app_color.dart';

class Inbox extends GetWidget<MessageController> {
  static const String route = "Inbox";
   Inbox({super.key});

  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageController>(
      init: MessageController(),
      builder: (controller) {
        return Scaffold(
          // backgroundColor: AppColor.backGroundSilver,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  SizedBox(height: 10.h),
                  Row(
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
                  SizedBox(height: 30.h),
                  Container(
                    width: 380.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                        color: AppColor.backGroundSilver,
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      children: [
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.selectedIndex(0);
                            },
                            child: Container(
                              width: 190.w,
                              height: 52.h,
                              decoration: controller.selectedIndex.value == 0
                                  ? BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color.fromRGBO(114, 151, 94,
                                              1), // Starting color
                                          Color.fromRGBO(71, 87, 54,
                                              1), // Ending color (modify as needed)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(40))
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(40)),
                              child: Center(
                                  child: Text(
                                "Information",
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: controller.selectedIndex.value == 0
                                      ? Color.fromRGBO(255, 255, 255, 1)
                                      : Color.fromRGBO(33, 33, 33, 1),
                                ),
                              )),
                            ),
                          ),
                        ),
                        Spacer(),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.selectedIndex(1);
                            },
                            child: Container(
                              width: 190.w,
                              height: 52.h,
                              decoration: controller.selectedIndex.value == 1
                                  ? BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color.fromRGBO(114, 151, 94,
                                              1), // Starting color
                                          Color.fromRGBO(71, 87, 54,
                                              1), // Ending color (modify as needed)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(40))
                                  : BoxDecoration(
                                      borderRadius: BorderRadius.circular(40)),
                              child: Center(
                                  child: Text(
                                "Reviews",
                                style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: controller.selectedIndex.value == 1
                                      ? Color.fromRGBO(255, 255, 255, 1)
                                      : Color.fromRGBO(33, 33, 33, 1),
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  TextField(
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
              Container(
                        width: Get.width,
                        height: 580.h,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Obx(() =>  controller.selectedIndex.value == 0
                                ? CoustomListile()
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
            ),
          ),
        );
      },
    );
  }
}
