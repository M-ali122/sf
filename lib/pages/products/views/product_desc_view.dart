import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

import '../../onboarding/controller/onboarding_controller.dart';

class ProductDescripition extends StatelessWidget {
  const ProductDescripition({super.key});

  @override
  Widget build(BuildContext context) {
    
    OnboardingController onboardingController = Get.put(OnboardingController());
    bool isDesigner = onboardingController.accountType.value == "Designer";
    return Column(
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
      ],
    );
  }
}