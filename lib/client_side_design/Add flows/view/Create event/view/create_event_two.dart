import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class CreateEventTWo extends StatefulWidget {
  const CreateEventTWo({super.key});

  @override
  State<CreateEventTWo> createState() => _CreateEventTWoState();
}

class _CreateEventTWoState extends State<CreateEventTWo> {
  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children: [
           SizedBox(
              height: 40.h,
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
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 500.h,),
          
          // ignore: prefer_const_constructors
          
          AppButton(title: 'Continue', onTap: () {showDialog(
                    builder: (context) {
                      return AlertDialog(
                        // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        // backgroundColor: Color.fromRGBO(r, g, b, opacity),
                        icon: SvgPicture.string(Svgs.eventdailog),
                        title: Text(
                          'Event created',
                          style: theme.textTheme.displayLarge,
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
                          
                          Center(
                            child: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 250.w,
                                height: 58.h,
                                decoration: BoxDecoration(
                                  gradient: AppColor.mainGradient,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: const Center(
                                    child:  Text(
                                  "Back",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
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

    );
    
  }
  
  }
