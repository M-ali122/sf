// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/message/view/chat_screen.dart';

class CoustomListile extends StatelessWidget {
  bool? countDot = false;
  CoustomListile({super.key, this.countDot});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Get.toNamed(ChatScreen.route);
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
        'Still available?',
        style: GoogleFonts.mulish(
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: const Color.fromRGBO(97, 97, 97, 1),
        ),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
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
          Text("20:20Pm",
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: const Color.fromRGBO(97, 97, 97, 1),
              )),
          SizedBox(
            height: 8.h,
          )
        ],
      ),
    );
  }
}
