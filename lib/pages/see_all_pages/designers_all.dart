import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../resources/icon/icon.dart';

class Designers extends StatelessWidget {
  static const String route = "Desginers";
  Designers({super.key});
  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                SvgPicture.string(Appicons.backIcon),
                SizedBox(
                  width: 20.w,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Top Categories',
                  style: theme.textTheme.displayLarge,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/aubrey.png"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
