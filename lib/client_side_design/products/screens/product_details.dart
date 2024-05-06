// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/doubled_outline_button.dart';
import 'package:sf_app/client_side_design/home/dp/popup_list.dart';
import 'package:sf_app/client_side_design/home/pages/cart_screen.dart';
import 'package:sf_app/client_side_design/message/view/inbox.dart';
import 'package:sf_app/client_side_design/onboarding/controller/onboarding_controller.dart';
import 'package:sf_app/client_side_design/products/controllers/product_controller.dart';
import 'package:sf_app/client_side_design/products/views/product_desc_view.dart';
import 'package:sf_app/client_side_design/review/view/review.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

// ignore: must_be_immutable
class ProductDetails extends StatelessWidget {
  static const String route = 'ProductDetails';
   ProductDetails({super.key});

  ProductController controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController = Get.put(OnboardingController());
    bool isDesigner = onboardingController.accountType.value == "Designer";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: 428.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                alignment: const Alignment(-1, -1),
                fit: BoxFit.cover,
                image: AssetImage(
                  isDesigner
                      ? "assets/rounde_neck_shirt.png"
                      : "assets/product.png",
                ),
              )),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 24.0.w, right: 24.w, top: 58.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.string(
                                Appicons.backIcon,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              )),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          isDesigner ? '' : 'Product details',
                          style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const Spacer(),
                        PopupMenuButton(
                          color: AppColor.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          itemBuilder: (context) => PopUpMenuData()
                              .popupmenudata
                              .map(
                                (e) => PopupMenuItem(
                                  padding: EdgeInsets.zero,
                                  child: ListTile(
                                    visualDensity: VisualDensity(vertical: -4),
                                    leading: Container(
                                      margin: const EdgeInsets.only(left: 16),
                                      child: SvgPicture.string(e.icon,
                                      color: const Color.fromRGBO(33, 33, 33, 1),),
                                    ),
                                    title: Text(e.menu,
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight:FontWeight.w600,
                                      color: const Color.fromRGBO(33, 33, 33, 1)
                                    ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                          onSelected: (value) {
                            // Handle selection
                            print('Selected: $value');
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 11.0),
                            child: SvgPicture.string(
                              Appicons.moresquareBorder,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DoubledOutlineButton(
              titleOne: 'information',
              titleTwo: 'Review',
              onIndexChanged: (value)async{
                controller.chnageIndexValue(value);
              },
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Obx(() => controller.productOtption.value == 0 ? ProductDescripition(): ReviewField()),
                  const SizedBox(
                    height: 130,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 114.h,
        decoration: const BoxDecoration(
            color: AppColor.white,
            border: Border(
                top: BorderSide(color: Color.fromRGBO(245, 245, 245, 1)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                // Get.snackbar(
                //   snackPosition: SnackPosition.BOTTOM,
                //   duration: const Duration(seconds: 1),
                //   'Buy Now',
                //   'comming soon',
                // );
                Get.to(Inbox());
              },
              child: Container(
                width: 160,
                height: 54,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(243, 243, 243, 1),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                  "Buy Now",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: const Color.fromRGBO(33, 33, 33, 1),
                  ),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                isDesigner ? null : Get.to(CartScreen());
              },
              child: Container(
                width: 160,
                height: 54,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(114, 151, 94, 1), // Starting color
                        Color.fromRGBO(
                            71, 87, 54, 1), // Ending color (modify as needed)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                  "Add to Cart",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
