// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/bottom_buttion.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class HomeView extends StatelessWidget {
  static const String route = "HomeView";
 HomeView({super.key});
var theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children:  [
            Row(
              children: [
                Image.asset('assets/Image.png'),
                SizedBox(width: 10.h,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome Back'),
                    Text(
                      'User Name',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize:20,
                        color: AppColor.GreyScale900 
                      ),
                      ),
                  ],
                ),
                const Spacer(),
                SvgPicture.string(Svgs.shop),
                SizedBox(width: 20.h,),
                SvgPicture.string(Svgs.chat)
              ],
              ),
            SizedBox(height: 30.h,),
            TextField(
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 20,),
                fillColor: AppColor.GreyScale50,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 10),
                  child: Icon(Icons.search,size: 30,color: AppColor.GreyScale400,),
                ),
                hintText: 'Search Products, designers',
                hintStyle: const TextStyle(color: AppColor.GreyScale400),
              ),
            ),
            SizedBox(height: 20.h,),
            Row(
              children: [
                Text(
                  'Top Categories',
                  style: theme.textTheme.headline6,
                  ),
                const Spacer(),
                SvgPicture.string(icon.arrowforword),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 162,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromRGBO(76, 175, 80, 0.08),
                  ),
                  child: Row(
                    children: [
                      Text('Women'),
                    Container(
                      height: Get.height,
                       width: 80,
                       decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/women.png'),fit: BoxFit.cover)
                       ),
                    ),
                    ],
                  ),
                ),
                Container(
                  width: 162,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromRGBO(76, 175, 80, 0.08),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
     );
  }
}
