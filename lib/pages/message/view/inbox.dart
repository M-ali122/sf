import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/coustom_listile.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../../resources/color/app_color.dart';

class Inbox extends StatelessWidget {
  static const String route = "Inbox";
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
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
                    width: 15,
                  ),
                  Text(
                    "Inbox",
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30.h),
              Container(
                width: 380,
                height: 52,
                decoration: BoxDecoration(
                    color: AppColor.backGroundSilver,
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Container(
                      width: 155,
                      height: 52,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(114, 151, 94, 1), // Starting color
                              Color.fromRGBO(71, 87, 54,
                                  1), // Ending color (modify as needed)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: Text(
                            "Information",
                            style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          )),
                    ),
                    Container(
                      width: 155,
                      height: 52,
                      decoration: BoxDecoration(
                        // gradient: LinearGradient(
                        //   colors: [
                        //     Color.fromRGBO(114, 151, 94, 1), // Starting color
                        //     Color.fromRGBO(71, 87, 54, 1),        // Ending color (modify as needed)
                        //   ],
                        // ),

                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: Text(
                            "Reviews",
                            style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: const Color.fromRGBO(33, 33, 33, 1),
                            ),
                          )),
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
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10),
                    child: Icon(Icons.search,
                        size: 30, color: AppColor.GreyScale400),
                  ),
                  hintText: 'Search messages',
                  hintStyle: const TextStyle(color: AppColor.GreyScale400),
                ),
              ),
              SizedBox(height: 30.h),
              CoustomListile(),
              SizedBox(height: 30.h),
              CoustomListile(countDot: true,),
              SizedBox(height: 30.h),
              CoustomListile(),
            ],
          ),
        ),
      ),
    );
  }
}
