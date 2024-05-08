import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/client_side_design/products/screens/product_details.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class ProductGallery extends StatelessWidget {
  static String route = 'ProductGallery';
  const ProductGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 184.h,
              width: 428.w,
              decoration: BoxDecoration(
                gradient: AppColor.mainGradient,
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 321.69.w,
                    child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.string(Svgs.designerhalfCircle)),
                  ),
                  Positioned(
                    left: 24.w,
                    top: 68.h,
                    child: Row(
                      children: [
                        SvgPicture.string(
                          Appicons.backIcon,
                          color: AppColor.white,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Text(
                          'Product gallery',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w700,
                              fontSize: 24.sp,
                              color: AppColor.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 151.h,
              child: Container(
                height: 775.h,
                width: 428.w,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: AppColor.white),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 70.h,
                    ),
                    GridView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          mainAxisExtent: 350.h,
                          childAspectRatio: 178),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(ProductDetails.route);
                          },
                          child: Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColor.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 60,
                                      offset: Offset(0, 4),
                                      color: Color.fromRGBO(4, 6, 15, 0.08),
                                    )
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 178.w,
                                    height: 143.h,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/rounde_neck_shirt.png",
                                              ),
                                            )
                                          ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, left: 15),
                                      child: Text(
                                        'Round neck shirt',
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.0.w),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 41.w,
                                          height: 25.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color:
                                                  AppColor.secondaryColor400),
                                          child: Center(
                                            child: Text(
                                              'Man',
                                              style: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10.sp,
                                                color: AppColor.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Container(
                                          width: 41.w,
                                          height: 25.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color:
                                                  AppColor.secondaryColor400),
                                          child: Center(
                                            child: Text(
                                              'Shirt',
                                              style: GoogleFonts.mulish(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10.sp,
                                                color: AppColor.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 15.w, top: 10.h),
                                    child: Container(
                                      width: 54.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: AppColor.secondaryColor400),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.string(Svgs.twostar),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            '4.6',
                                            style: GoogleFonts.mulish(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10.sp,
                                              color: AppColor.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.0.w, top: 10.h),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12.h,
                                          width: 12.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xffFFCD90)),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Container(
                                          height: 12.h,
                                          width: 12.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColor.red),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Container(
                                          height: 12.h,
                                          width: 12.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff313131)),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        const Icon(
                                          Icons.add_circle_outline,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0.w),
                                      child: Text('100 SAR'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    30.height,
                  ],
                ),
              ),
            ),
            Positioned(
              top: 132.h,
              left: 159.w,
              child: Container(
                height: 110.h,
                width: 110.w,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: AppColor.white,
                  shadows: [
                    BoxShadow(
                        blurRadius: 60,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                        color: Color.fromRGBO(4, 6, 15, 0.08)),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset('assets/splashlogo.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
