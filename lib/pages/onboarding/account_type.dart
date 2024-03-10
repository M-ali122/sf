import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class AccountType extends StatelessWidget {
  static String route = 'AccountType';
  AccountType({super.key});


  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.string(icon.backIcon),
              ),
              SizedBox(height: 20,),
              Text('How will you use the app as?',
                style: theme.textTheme.headline4,
              ),
              SizedBox(height: 20,),
              Container(
                height: 170,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: AppColor.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: Offset(1, 02),
                      spreadRadius: 1,
                      blurRadius: 2,
                      blurStyle: BlurStyle.solid
                    ),
                  ]
                ),
                child: Column(
                  children: [
                    // CircleAvatar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
