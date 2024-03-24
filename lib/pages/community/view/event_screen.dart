import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/resources/color/app_color.dart';

class EventScreen extends StatelessWidget {
   EventScreen({super.key});
 
   final theme = Get.theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20.h,),
          Center(
            child: Container(
                height:269.h,
                width: 380.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                    image: AssetImage('assets/cloth.png'),fit: BoxFit.cover)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 162.0),
                  child: Container(
                    height: 150.h,
                    width: Get.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 60,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                          color: Color.fromRGBO(4, 6, 15, 0.08)
                        )
                      ]
                    ),
                    
                    child: Stack(
                      children: [
                        Positioned(
                          left: 317.45.w,
                          child: Container(
                            height: 44.h,
                            width: 43.66.w,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: AppColor.secondaryColor500
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '20',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,color:AppColor.white,
                                  ),
                                  ),
                                  Text(
                                  'MAR',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,color:AppColor.white,
                                  ),
                                  ),
                              ],
                  
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16.w,
                          top: 15.h,
                          child: Container(
                            height: 100.22.h,
                            width: Get.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Samantha brand launch',
                                  style: theme.textTheme.bodyText1,
                                  ),
                                  Text(
                                  'Hilal Stadium, Riadh',
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: AppColor.GreyScale500
                                  ),
                                  ),
                                  5.height,
                                  Row(
                                    children: [
                                      Image.asset('assets/circleImages.png'),
                                      SizedBox(width: 90.w,),
                                      AppButton(
                                        title: 'Join event',
                                         onTap: (){},
                                         height: 32.h,
                                         width: 99.w,
                                         style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          color: AppColor.white
                                         ),
                                         ),
                                    ],
                                  ),
                                  
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ),
          ),
          /// second container 
          20.height,  
           Center(
            child: Container(
                height:269.h,
                width: 380.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                    image: AssetImage('assets/designworkshop.png'),fit: BoxFit.cover)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 162.0),
                  child: Container(
                    height: 150.h,
                    width: Get.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 60,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                          color: Color.fromRGBO(4, 6, 15, 0.08)
                        )
                      ]
                    ),
                    
                    child: Stack(
                      children: [
                        Positioned(
                          left: 317.45.w,
                          child: Container(
                            height: 44.h,
                            width: 43.66.w,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: AppColor.secondaryColor500
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '20',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,color:AppColor.white,
                                  ),
                                  ),
                                  Text(
                                  'MAR',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,color:AppColor.white,
                                  ),
                                  ),
                              ],
                  
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16.w,
                          top: 15.h,
                          child: Container(
                            height: 100.22.h,
                            width: Get.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Design workshop',
                                  style: theme.textTheme.bodyText1,
                                  ),
                                  Text(
                                  'Hilal Stadium, Riadh',
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: AppColor.GreyScale500
                                  ),
                                  ),
                                  5.height,
                                  Row(
                                    children: [
                                      Image.asset('assets/circleImages.png'),
                                      SizedBox(width: 90.w,),
                                      AppButton(
                                        title: 'Join event',
                                         onTap: (){},
                                         height: 32.h,
                                         width: 99.w,
                                         style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          color: AppColor.white
                                         ),
                                         ),
                                    ],
                                  ),
                                  
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ),
          ),
          /// 3rd conatiner 
          20.height,
           Center(
            child: Container(
                height:269.h,
                width: 380.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                    image: AssetImage('assets/cloth.png'),fit: BoxFit.cover)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 162.0),
                  child: Container(
                    height: 150.h,
                    width: Get.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 60,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                          color: Color.fromRGBO(4, 6, 15, 0.08)
                        )
                      ]
                    ),
                    
                    child: Stack(
                      children: [
                        Positioned(
                          left: 317.45.w,
                          child: Container(
                            height: 44.h,
                            width: 43.66.w,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: AppColor.secondaryColor500
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '20',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,color:AppColor.white,
                                  ),
                                  ),
                                  Text(
                                  'MAR',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,color:AppColor.white,
                                  ),
                                  ),
                              ],
                  
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16.w,
                          top: 15.h,
                          child: Container(
                            height: 100.22.h,
                            width: Get.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Samantha brand launch',
                                  style: theme.textTheme.bodyText1,
                                  ),
                                  Text(
                                  'Hilal Stadium, Riadh',
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: AppColor.GreyScale500
                                  ),
                                  ),
                                  5.height,
                                  Row(
                                    children: [
                                      Image.asset('assets/circleImages.png'),
                                      SizedBox(width: 90.w,),
                                      AppButton(
                                        title: 'Join event',
                                         onTap: (){},
                                         height: 32.h,
                                         width: 99.w,
                                         style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          color: AppColor.white
                                         ),
                                         ),
                                    ],
                                  ),
                                  
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ),
          ),
       ],
      ),
    );
  }
}