import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/pages/profile/view/edit_profile.dart';
import 'package:sf_app/pages/profile/view/language.dart';
import 'package:sf_app/pages/profile/view/notification.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class Settings extends StatelessWidget {
  Settings({super.key});
  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  SvgPicture.string(Appicons.backIcon),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Settings',
                    style: theme.textTheme.headline1,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              coustomeTile(
                  OnTap: () {
                    Get.to(EditProfile());
                  },
                  title: 'Edit Information',
                  leadings: Appicons.profileBorder,
                  trailings: Appicons.arrowforword),
              coustomeTile(
                  OnTap: () {
                    Get.to(Notifications());
                  },
                  title: 'Notification',
                  leadings: Appicons.notificationBorder,
                  trailings: Appicons.arrowforword),
              coustomeTile(
                  OnTap: () {
                    Get.to(Language());
                  },
                  title: 'Language',
                  leadings: Appicons.morecircleBorder,
                  trailings: Appicons.arrowforword,
                  values: "English (US)"),
              coustomeTile(
                  title: 'Privacy Policy',
                  leadings: Appicons.dangersquareBorder,
                  trailings: Appicons.arrowforword),
              coustomeTile(
                  OnTap: () {
                    showModalBottomSheet(
                      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                      context: context,
                      builder: (BuildContext context) {
                        // Return your bottom sheet widget here
                        return logoutDailog();
                      },
                    );
                  },
                  title: 'Logout',
                  leadings: Appicons.logoutBorder,
                  colors: 0xFFF75555),
              coustomeTile(
                  OnTap: () {
                    showDialog(
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            // backgroundColor: Color.fromRGBO(r, g, b, opacity),
                            icon: SvgPicture.string(Svgs.redGroup),
                            title: Text(
                              'Delete your account',
                              style: theme.textTheme.headline1,
                            ),
                            actions: [
                              const Text(
                                'Are you sure to delete your account? You will loose all the data of the account ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Mulish",
                                  color: Color.fromRGBO(33, 33, 33, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: 276.w,
                                height: 58.h,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(245, 67, 54, 1),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: Center(
                                    child: Text(
                                  "Cancel",
                                  style: theme.textTheme.bodyText1,
                                )),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                width: 276.w,
                                height: 58.h,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(243, 243, 243, 1),
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: Center(
                                    child: Text(
                                  "Delete",
                                  style: theme.textTheme.bodyText1,
                                )),
                              ),
                            ],
                          );
                        },
                        context: context);
                  },
                  title: 'Delete Account',
                  leadings: Appicons.deleteBorder,
                  colors: 0xFFF75555),
            ],
          ),
        ),
      ),
    );
  }

  Widget logoutDailog() {
    return Container(
      height: 266.h,
      width: Get.width,
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 38.w,
            height: 3.h,
            color: const Color.fromRGBO(224, 224, 224, 1),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Logout",
            style: theme.textTheme.headline1!
                .copyWith(color: const Color.fromRGBO(247, 85, 85, 1)),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Are you sure you want to log out?",
            style: theme.textTheme.headline6!.copyWith(
              color: const Color.fromRGBO(6, 66, 66, 1),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 184.w,
                height: 58.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff72975E),
                      Color(0xff475736),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Center(
                    child: Text(
                  "Cancel",
                  style: theme.textTheme.bodyText1,
                )),
              ),

              Container(
                width: 184.w,
                height: 58.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 243, 243, 1),
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Center(
                    child: Text(
                  "Yes, Logout",
                  style: theme.textTheme.bodyText1,
                )),
              ),
              // AppButton(
              //   title: 'Cancel',
              //   onTap: () {},
              //   width: 184.w,
              //   height: 58.h,
              //   radius: 24.r,
              //   background: AppColor.Dark1,
              //   foreground: AppColor.black,
              // gradient: AppColor.buttonGredient
              // background: Color.fromRGBO(243, 243, 243, 1),
              // ),
            ],
          )
        ],
      ),
    );
  }

  Widget coustomeTile(
      {String? title,
      leadings,
      trailings,
      values,
      int? colors,
      VoidCallback? OnTap}) {
    return ListTile(
      onTap: OnTap,
      contentPadding: const EdgeInsets.all(0),
      title: Row(
        children: [
          Text(
            title!,
            style: GoogleFonts.mulish(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color:
                    colors != null ? Color(colors) : const Color(0xFF212121)),
          ),
          const Spacer(),
          if (values != null)
            Text(
              values,
              style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color(0xFF212121)),
            ),
        ],
      ),
      leading: SvgPicture.string(
        leadings,
        color: colors != null ? Color(colors) : null,
      ),
      trailing: trailings == null
          ? const SizedBox.shrink()
          : SvgPicture.string(trailings),
    );
  }
}
