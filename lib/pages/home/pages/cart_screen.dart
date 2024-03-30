import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/pages/home/controller/home_controller.dart';
import 'package:sf_app/pages/home/pages/address_screen.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class CartScreen extends StatelessWidget {
   CartScreen({super.key});
 
   final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 60.h,),
            Padding(
              padding:  EdgeInsets.only(left: 5.0.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: SvgPicture.string(Appicons.backIcon)),
                  SizedBox(width: 20.w,),
                  Text('Cart',
                        style: theme.textTheme.headline1,),
                ],
              ),
            ),
            30.height,
            TextField(
              decoration: InputDecoration(
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                fillColor: const Color.fromRGBO(250, 250, 250, 1),
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10),
                  child: SvgPicture.string(
                    Appicons.searchBorder,
                    color: const Color.fromRGBO(189, 189, 189, 1),
                    height: 20,
                    width: 20,
                  ),
                ),
                hintText: 'Search',
                hintStyle: GoogleFonts.mulish(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: const Color.fromRGBO(189, 189, 189, 1)
                ),
              ),
            ),
            20.height,
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                    height: 170.h,
                    width: 380.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: AppColor.white,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 60,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                              color: Color.fromRGBO(4, 6, 15, 0.05))
                        ]),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 33,
                          left: 20,
                          child: Container(
                            height: 102,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColor.backGroundSilver),
                            child: Center(
                              child: Image.asset('assets/profile5.png'),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 25.h,
                            left: 334.w,
                            child: GestureDetector(
                              onTap: (){
                                controller.toggleCheckbox(index);
                              },
                              child: Obx(() => SvgPicture.string(
                                controller.isCheckedList[index]? 
                                Appicons.tickfill: Appicons.tickSquare
                              ))
                            )
                            ),
                        Positioned(
                            top: 70.h,
                            left: 334.w,
                            child: GestureDetector(
                              onTap: (){
                                Get.snackbar(
                                  snackPosition: SnackPosition.BOTTOM,
                                  duration: const Duration(seconds: 1),
                                  'Edit', 'Comming soon');
                              },  
                              child: SvgPicture.string(Appicons.editBorder)
                              )
                            ),
                        Positioned(
                            top: 78.h,
                            left: 240.w,
                            child: Container(
                              height: 12.h,
                              width: 12.w,
                              decoration: const ShapeDecoration(
                                  shape: CircleBorder(),
                                  color: Color(0xff017663)),
                            )),
                        Positioned(
                            top: 120.h,
                            left: 334.w,
                            child: GestureDetector(
                              onTap: (){
                                Get.snackbar(
                                  duration: const Duration(
                                    seconds: 1,
                                  ),
                                  snackPosition: SnackPosition.BOTTOM,
                                  'product delete', 'comming soon');
                              },
                              child: SvgPicture.string(
                                Appicons.deleteBorder,
                                color: AppColor.red,
                                height: 20,
                                width: 20,
                              ),
                            )),
                        Positioned(
                          left: 150,
                          top: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Product Name',
                                style: theme.textTheme.labelLarge,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Size: L',
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: AppColor.GreyScale600),
                              ),
                              5.height,
                              Text(
                                'Color: Green',
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: AppColor.GreyScale600),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Qty: 1',
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: AppColor.GreyScale600),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '44.00 SAR',
                                    style: theme.textTheme.bodyText1,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 118.h,
        width: Get.width,
        decoration: const BoxDecoration(
          color: AppColor.white,
          border: Border(
            top: BorderSide(color: Color(0xffF5F5F5)),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
               style: GoogleFonts.urbanist(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color:AppColor.Dark1
            ),
                children: <TextSpan>[
                  const TextSpan(
                    text: '88.00 SAR',
                  ),
                  TextSpan(
                    text: '\n2 Articles',
                    style: GoogleFonts.urbanist(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color:AppColor.GreyScale500
            ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0,left: 40),
              child: AppButton(
                  width: 236.w, height: 58.h, title: 'Continue', onTap: () {
                    Get.to(const AddressScreen());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
