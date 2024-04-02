import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/color/app_color.dart';

class OrderMessage extends StatelessWidget {
  static String route = 'OrderMessage';
   OrderMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 73,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColor.secondaryColor100,
                ),
                child: Center(
                  child: Text(
                    '30/01/2024',
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w600,
                      color:AppColor.secondaryColor500,
                      fontSize: 10
                    ),
                    ),  
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 46,
                width: 290,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(4),
                  ),
                  color: AppColor.primaryColor500
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Hi , good morning 😄',
                      style: GoogleFonts.mulish(
                        color:AppColor.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),
                      ),
                      Spacer(),
                      Text('10:00',
                      style: GoogleFonts.mulish(
                        color:AppColor.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),)
                    ],
                    ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 68,
                width: 290,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(4),
                  ),
                  color: AppColor.primaryColor500
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('I’m interested in your\nproduct.',
                      style: GoogleFonts.mulish(
                        color:AppColor.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),
                      ),
                      Spacer(),
                      Text('10:00',
                      style: GoogleFonts.mulish(
                        color:AppColor.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),)
                    ],
                    ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 46,
                width: 290,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(24),
                  ),
                  color: AppColor.GreyScale100
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Hi, morning too!',
                      style: GoogleFonts.mulish(
                        color:AppColor.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),
                      ),
                      Spacer(),
                      Text('10:00',
                      style: GoogleFonts.mulish(
                        color:AppColor.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),)
                    ],
                    ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 68,
                width: 290,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(24),
                  ),
                  color: AppColor.GreyScale100
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Thanks, do you want to\nknow more about it ?',
                      style: GoogleFonts.mulish(
                        color:AppColor.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),
                      ),
                      Spacer(),
                      Text('10:00',
                      style: GoogleFonts.mulish(
                        color:AppColor.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),)
                    ],
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}