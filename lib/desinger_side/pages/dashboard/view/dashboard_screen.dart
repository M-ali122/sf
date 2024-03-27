import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class DesignerDashbaord extends StatelessWidget {
  const DesignerDashbaord({super.key});

  @override
  Widget build(BuildContext context) {
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
                top: -58.48.h,
                child: SvgPicture.string(Svgs.designerhalfCircle),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 68.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 48,
                    foregroundImage: AssetImage('assets/designerProfile.png',),
                  ),  
                  title: Text('Welcome Back'),
                  subtitle: Text('User Name'),
                  trailing: SvgPicture.string(Appicons.folderBorder,color: AppColor.white,),
                ),
              ),
              Positioned(
                top: 357.h,
                child: Container(
                  height: 629.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: AppColor.white
                  ),
                ),
              ),
            ],
          ),
          ),
    );
  }
}