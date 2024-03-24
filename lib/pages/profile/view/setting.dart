import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/profile/view/edit_profile.dart';
import 'package:sf_app/pages/profile/view/language.dart';
import 'package:sf_app/pages/profile/view/notification.dart';
import 'package:sf_app/resources/icon/icon.dart';

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
                  title: 'Logout',
                  leadings: Appicons.logoutBorder,
                  colors: 0xFFF75555),
              coustomeTile(
                  title: 'Delete Account',
                  leadings: Appicons.deleteBorder,
                  colors: 0xFFF75555),
            ],
          ),
        ),
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
      contentPadding: EdgeInsets.all(0),
      title: Row(
        children: [
          Text(
            title!,
            style: GoogleFonts.mulish(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: colors != null ? Color(colors) : Color(0xFF212121)),
          ),
          Spacer(),
          if (values != null)
            Text(
              values,
              style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xFF212121)),
            ),
        ],
      ),
      leading: SvgPicture.string(
        leadings,
        color: colors != null ? Color(colors) : null,
      ),
      trailing:
          trailings == null ? SizedBox.shrink() : SvgPicture.string(trailings),
    );
  }
}
