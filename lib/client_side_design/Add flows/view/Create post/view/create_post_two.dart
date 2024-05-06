import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class CreatePostTWo extends StatefulWidget {
  const CreatePostTWo({super.key});

  @override
  State<CreatePostTWo> createState() => _CreatePostTWoState();
}

class _CreatePostTWoState extends State<CreatePostTWo> {
  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  const EdgeInsets.all(15.0),
          child: Column(
            children: [
               SizedBox(
                  height: 30.h,
                ),
                const Text(
                'Upload your event cover picture',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(33, 33, 33, 1)),
              ),
              SizedBox(
                  height: 20.h,
                ),
                Container(
                height: 171,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color.fromRGBO(250, 250, 250, 1),
                    border: Border.all(
                        width: 3,
                        color: const Color.fromRGBO(201, 179, 114, 1))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.string(
                      Svgs.galleryIcon,
                      color: AppColor.GreyScale500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cover photo',
                      style: theme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Spacer(),
              
              // ignore: prefer_const_constructors
              
              AppButton(title: 'Continue', onTap: () {showDialog(
                        builder: (context) {
                          return AlertDialog(
                            // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            // backgroundColor: Color.fromRGBO(r, g, b, opacity),
                            icon: SvgPicture.string(Svgs.redGroup),
                            title: Text(
                              'Event created',
                              style: theme.textTheme.headline1,
                            ),
                            actions: [
                              const Text(
                                'Your event can be seen by other users ',
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
                              
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  width: 250.w,
                                  height: 58.h,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(243, 243, 243, 1),
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Back",
                                    style: theme.textTheme.bodyText1,
                                  )),
                                ),
                              ),
                            ],
                          );
                        },
                        context: context);
                  },),
                  SizedBox(height: 10.h,)
              
              

            ],
          ),
        ),
      ),

    );
    
  }
  
  }
