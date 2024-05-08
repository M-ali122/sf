// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../resources/color/app_color.dart';

class FeedCard extends StatelessWidget {
  final Color? color;

  FeedCard({super.key, this.color});
  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        height: 395.h,
        width: 380.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppColor.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(4, 6, 15, 0.08),
              spreadRadius: 0,
              blurRadius: 60,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.0.h),
                child: ListTile(
                  leading: Container(
                    height: 48.h,
                    width: 48.w,
                    decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        image: DecorationImage(
                            image: AssetImage('assets/profile.png'),
                            fit: BoxFit.cover)),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 5.0.w),
                    child: Text(
                      'User Name',
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(left: 5.0.w),
                    child: Text(
                      '3 Hours ago',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w400, fontSize: 14.sp),
                    ),
                  ),
                  trailing: PopupMenuButton(
                    itemBuilder: (context) => [
                       PopupMenuItem(
                        value: 'option1',
                        child: Row(
                          children: [
                            // SvgPicture.string(Appicons.profileBorderplus),
                            SizedBox(
                              width: 10.w,
                            ),
                            const Text('Follow user'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'option1',
                        child: Row(
                          children: [
                            // SvgPicture.string(Appicons.bookmarkBorder),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text('Save post'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'option1',
                        child: Row(
                          children: [
                            // SvgPicture.string(Appicons.swapBorder),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text('Share post'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'option1',
                        child:  Row(
                          children: [
                            // SvgPicture.string(Appicons.dangertriangleBorder),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text('Flag post'),
                          ],
                        ),
                      ),
                    ],
                    onSelected: (value) {
                      // Handle selection
                      print('Selected: $value');
                    },
                    child: SvgPicture.string(Appicons.moresquareBorder),
                  ),
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 90.0.h, left: 20.w, right: 20.w),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Great event with the fashion store today it was really a pleasure ',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: AppColor.Dark1),
                      ),
                      TextSpan(
                        text: 'View More ',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: const Color.fromRGBO(201, 179, 114, 1)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 150.0.h, left: 15.w, right: 15.w),
                child: Container(
                  height: 196.h,
                  width: 348.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(108, 143, 89, 0.05),
                      image: const DecorationImage(
                          image: AssetImage('assets/community.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 335.0.h, right: 15.w, left: 15.w),
                child: Container(
                  height: 48.h,
                  width: 348.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('assets/Actions.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
