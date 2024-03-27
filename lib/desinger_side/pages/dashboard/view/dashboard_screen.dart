import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class DesignerDashbaord extends StatelessWidget {
  const DesignerDashbaord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      body: Container(
        height: 836.h,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: AppColor.mainGradient,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 321.69.w,
              child: SvgPicture.string(Svgs.designerhalfCircle),
            ),
            Padding(
              padding: EdgeInsets.only(top: 68.0.h),
              child: ListTile(
                contentPadding: const EdgeInsets.only(right: 24),
                leading: const CircleAvatar(
                  radius: 48,
                  foregroundImage: AssetImage('assets/designerProfile.png'),
                ),
                horizontalTitleGap: 3,
                title: Text(
                  'Welcome Back',
                  style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColor.white),
                ),
                subtitle: Text(
                  'User Name',
                  style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: AppColor.white),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.string(
                        Appicons.folderBorder,
                        color: AppColor.white,
                      ),
                    ),
                    SizedBox(width: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.string(
                        Appicons.chatBorderwithbadge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 144.h,
              left: 24.w,
              child: SvgPicture.string(Svgs.divider),
            ),
            Positioned(
              top: 160.h,
              left: 24.w,
              child: SizedBox(
                height: 101.h,
                width: 380.w,
                child: Column(
                  children: [
                    Text(
                      '2,375 SAR',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700,
                          fontSize: 48,
                          color: AppColor.white),
                    ),
                    Text(
                      'Total Sales',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColor.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 207.05.h, child: SvgPicture.string(Svgs.designercircle)),
            Positioned(
              top: 293.h,
              left: 24.w,
              child: SizedBox(
                height: 32.h,
                width: 380.w,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1D',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: AppColor.white),
                      ),
                      Text(
                        '1W',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: AppColor.white),
                      ),
                      Container(
                        height: 32.h,
                        width: 41.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColor.secondaryColor500),
                        child: Center(
                          child: Text(
                            '1M',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: AppColor.white),
                          ),
                        ),
                      ),
                      Text(
                        '3M',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: AppColor.white),
                      ),
                      Text(
                        '1Y',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: AppColor.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            /// white conatiner
            Positioned(
              top: 357.h,
              child: Container(
                height: 629.h,
                width: Get.width,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: AppColor.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Month Stats',
                      style: theme.textTheme.headline6,
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Container(
                          height: 52.h,
                          width: 52.w,
                          decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              color: Color.fromRGBO(201, 179, 114, 0.1)
                          ),
                          child: Center(
                            child: SvgPicture.string(Appicons.document,color: AppColor.secondaryColor500,),
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        RichText(
                          text: TextSpan(
                            style:
                                GoogleFonts.mulish(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.Dark1,
                                  ),
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <TextSpan>[
                              const TextSpan(text: 'Orders'),
                              TextSpan(
                                  text: '\n04',
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    height: 1.6
                                  )
                                      
                                    ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 52.h,
                          width: 52.w,
                          decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              color: Color.fromRGBO(201, 179, 114, 0.1)
                          ),
                          child: Center(
                            child: SvgPicture.string(Appicons.eyesicon,color: AppColor.secondaryColor500,),
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        RichText(
                          text: TextSpan(
                            style:
                                GoogleFonts.mulish(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.Dark1,
                                  ),
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <TextSpan>[
                              const TextSpan(text: 'Product views '),
                              TextSpan(
                                  text: '\n220',
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    height: 1.6
                                  )
                                      
                                    ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
