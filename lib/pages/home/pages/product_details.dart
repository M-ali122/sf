import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/doubled_outline_button.dart';
import 'package:sf_app/pages/home/dp/popup_list.dart';
import 'package:sf_app/pages/home/pages/cart_screen.dart';
import 'package:sf_app/pages/onboarding/controller/onboarding_controller.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class ProductDetails extends StatelessWidget {
  static const String route = 'ProductDetails';
  const ProductDetails({super.key});

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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.height,
                  Text(
                    isDesigner ? 'Round neck shirt' : 'Polo Shirt',
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Color.fromRGBO(33, 33, 33, 1)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFCD90)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColor.red),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff313131)),
                      ),
                    ],
                  ),
                  20.height,
                  Row(
                    children: [
                      Container(
                        height: 25.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color.fromRGBO(215, 199, 152, 1),
                        ),
                        child: Center(
                          child: Text(
                            'Female',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColor.white),
                          ),
                        ),
                      ),
                      10.width,
                      Container(
                        height: 25.h,
                        width: 43.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color.fromRGBO(215, 199, 152, 1),
                        ),
                        child: Center(
                          child: Text(
                            'Shirt',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColor.white),
                          ),
                        ),
                      ),
                      10.width,
                      Container(
                        height: 25.h,
                        width: 64.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color.fromRGBO(215, 199, 152, 1),
                        ),
                        child: Center(
                          child: Text(
                            'M / L / XL',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColor.white),
                          ),
                        ),
                      ),
                      10.width,
                      Container(
                          height: 25.h,
                          width: 55.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromRGBO(215, 199, 152, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.string(Svgs.twostar),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                '4.6',
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: AppColor.white),
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Description',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: const Color.fromRGBO(33, 33, 33, 1)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color.fromRGBO(66, 66, 66, 1)),
                  ),
                  isDesigner
                      ? const SizedBox()
                      : Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Materiel Details',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: const Color.fromRGBO(33, 33, 33, 1)),
                          ),
                        ),
                  isDesigner
                      ? const SizedBox()
                      : Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "100% Coton",
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color.fromRGBO(66, 66, 66, 1)),
                          ),
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  isDesigner
                      ? const Text('')
                      : Text(
                          'Care Instructions',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: const Color.fromRGBO(33, 33, 33, 1)),
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color.fromRGBO(66, 66, 66, 1)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Gallery Photos',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: const Color.fromRGBO(33, 33, 33, 1)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(isDesigner
                                      ? "assets/rounde_neck_shirt.png"
                                      : "assets/ariveldesigin.png")),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
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
                Get.snackbar(
                  snackPosition: SnackPosition.BOTTOM,
                  duration: const Duration(seconds: 1),
                  'Buy Now',
                  'comming soon',
                );
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
