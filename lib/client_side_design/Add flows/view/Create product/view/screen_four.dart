import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20product/controller/create_product_controller.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class UploadProductImage extends GetWidget<CreateProductController> {
  const UploadProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            children: [
              SizedBox(
                height: 30.h,
              ),
              const Row(
                children: [
                  Text(
                    'Upload your product \npictures ( Max 12 )',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 140.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColor.backGroundSilver),
                        child: Center(
                          child: Image.asset('assets/shoe.png'),
                        ),
                      ),
                      Container(
                        height: 140.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColor.backGroundSilver),
                        child: Center(
                          child: Image.asset('assets/shoe.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 140.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColor.backGroundSilver),
                        child: Center(
                          child: Image.asset('assets/shoe.png'),
                        ),
                      ),
                      Container(
                        height: 140.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColor.backGroundSilver),
                        child: Center(
                          child: Image.asset('assets/shoe.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 140.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColor.backGroundSilver),
                        child: Center(
                          child: Image.asset('assets/shoe.png'),
                        ),
                      ),
                      Container(
                        height: 140.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.black),
                            color: Colors.white),
                        child: const Center(child: Icon(Icons.add)),
                      ),
                    ],
                  ),
                ],
              ),
              30.height,
              AppButton(
                title: 'Create Product',
                onTap: () {
                  showDialog(
                      builder: (context) {
                        return AlertDialog(
                          // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          // backgroundColor: Color.fromRGBO(r, g, b, opacity),
                          icon: SvgPicture.string(Svgs.redGroup),
                          title: Text(
                            'Product created',
                            style: theme.textTheme.displayLarge,
                          ),
                          actions: [
                             Text(
                              'Your product is now live on your gallery. ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Mulish",
                                color: Color.fromRGBO(33, 33, 33, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 250.w,
                                height: 58.h,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(243, 243, 243, 1),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: Center(
                                    child: Text(
                                  "Back",
                                  style: theme.textTheme.bodyLarge,
                                )),
                              ),
                            ),
                          ],
                        );
                      
                      },
                      context: context);
                      // controller.uploadProductImage();
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
