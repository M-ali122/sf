// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/message/view/chat_screen.dart';
import 'package:sf_app/resources/color/app_color.dart';

class CoustomListile extends StatelessWidget {
  bool? countDot = false;
  String? des ;
  String? date;
  CoustomListile({super.key, this.countDot,this.des , this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91.h,
      width: 380.w,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 40,
            color: Color.fromRGBO(4, 6, 15, 0.05),
            offset: Offset(0, 2),
          )
        ]
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
        color: AppColor.white,
        ),
        child: Center(
          child: ListTile(
            onTap: (){
              Get.to(() => ChatScreen());
            },
            leading: Container(
              width: 60.w,
              height: 51.h,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("assets/shoes.png"))),
            ),
            title: Text(
              'Designer Name',
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                color: const Color.fromRGBO(33, 33, 33, 1),
              ),
            ),
            subtitle: Text(
              '$des',
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: const Color.fromRGBO(97, 97, 97, 1),
              ),
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // 8.height,
                countDot == true
                    ? CircleAvatar(
                        radius: 10,
                        backgroundColor: const Color.fromRGBO(201, 179, 114, 1),
                        child: Center(
                            child: Text(
                          "2",
                          style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        )),
                      )
                    : const SizedBox.shrink(),
                const Spacer(),
                Text("$date",
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: const Color.fromRGBO(97, 97, 97, 1),
                    )),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
