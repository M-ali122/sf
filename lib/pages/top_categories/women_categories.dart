import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class WomenCategroies extends StatelessWidget {
  static String route = 'WomenCategories';
  WomenCategroies({super.key});

  var theme = Get.theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              SizedBox(height: 25,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SvgPicture.string(icon.backIcon),
                  ),
              SizedBox(width: 20,),    
              Text(
                    'women',
                    style: theme.textTheme.headline4,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
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
                    padding: EdgeInsets.only(left: 20.0, right: 10),
                    child: Icon(Icons.search, size: 30, color: AppColor.GreyScale400),
                  ),
                  hintText: 'Search Products, designers',
                  hintStyle: const TextStyle(color: AppColor.GreyScale400),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 42,
                    width: 82,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.primaryColor500
                    ),
                    child: Center(
                      child: Text(
                        'Shirts',
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColor.white 
                        ),
                        ),
                    ),
                    ),
                    Container(
                    height: 42,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.backGroundSilver
                    ),
                    child: Center(
                      child: Text(
                        'Pants',
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColor.black  
                        ),
                        ),
                    ),
                    ),
                    Container(
                    height: 42,
                    width: 82,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.backGroundSilver
                    ),
                    child: Center(
                      child: Text(
                        'Dress',
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColor.black 
                        ),
                        ),
                    ),
                    ),
                    Container(
                    height: 42,
                    width: 82,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.backGroundSilver
                    ),
                    child: Center(
                      child: Text(
                        'Jacket',
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColor.black 
                        ),
                        ),
                    ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}