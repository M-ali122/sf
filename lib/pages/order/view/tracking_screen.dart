import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/color/app_color.dart'; 
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class TrackingOrder extends StatelessWidget {
  static String route = 'TrackingOrder';
   TrackingOrder({super.key});

   final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: ListView(
        children: [
          const SizedBox(height: 30,),
          Container(
            height: 150.h,
            width: 380.w,
            decoration: const BoxDecoration(
              boxShadow: [
                      BoxShadow(
                        blurRadius: 60,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                        color: Color.fromRGBO(4, 6, 15, 0.05)
                      ),
                    ]
            ),
            child: SvgPicture.string(Svgs.orderinDevlivery,fit: BoxFit.cover,)
            ),
            const SizedBox(height: 30,),
            Container(
              height: 496.h,
              width: 380.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              decoration: const BoxDecoration(
                boxShadow: [
                      BoxShadow(
                        blurRadius: 60,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                        color: Color.fromRGBO(4, 6, 15, 0.05)
                      ),
                    ]
              ),
              child:  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
              color: AppColor.white,
                ),
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                      child: Text(
                        'Delivery Status',
                        style: theme.textTheme.headline6,
                        ),
                    ), 
                      const Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 135.0,left: 16),
                        child: SvgPicture.string(Svgs.dotsline,color: AppColor.primaryColor500,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70.0),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 3),
                          leading: SvgPicture.string(Appicons.tworoundedContainer),
                          title: Text(
                            'Order is being Delivered - Dec...',
                              style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                            ),
                            ),
                          trailing: Text(
                            '08:40 AM',
                            style: theme.textTheme.caption,
                            ),
                          subtitle: const Text('address name'),
                        ),
                      ),     
                      Padding(
                        padding: const EdgeInsets.only(top: 228.0,left: 16),
                        child: SvgPicture.string(Svgs.dotsline),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top: 160.0),
                         child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 3),
                          leading: SvgPicture.string(Appicons.tworoundedContainer,color: AppColor.GreyScale400,),
                          title: Text(
                            'Order is being Delivered - Dec...',
                              style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                            ),
                            ),
                          trailing: Text(
                            '08:40 AM',
                            style: theme.textTheme.caption,
                            ),
                          subtitle: const Text('address name'),
                                             ),
                       ),  
                       Padding(
                        padding: const EdgeInsets.only(top: 328.0,left: 16),
                        child: SvgPicture.string(Svgs.dotsline),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top: 260.0),
                         child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 3),
                          leading: SvgPicture.string(Appicons.tworoundedContainer,color: AppColor.GreyScale400,),
                          title: Text(
                            'Order is being Delivered - Dec...',
                              style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                            ),
                            ),
                          trailing: Text(
                            '08:40 AM',
                            style: theme.textTheme.caption,
                            ),
                          subtitle: const Text('address name'),
                                             ),
                       ),  
                       Padding(
                         padding: const EdgeInsets.only(top: 360.0),
                         child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 3),
                          leading: SvgPicture.string(Appicons.tworoundedContainer,color: AppColor.GreyScale400,),
                          title: Text(
                            'Order is being Delivered - Dec...',
                              style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                            ),
                            ),
                          trailing: Text(
                            '08:40 AM',
                            style: theme.textTheme.caption,
                            ),
                          subtitle: const Text('address name'),
                                             ),
                       ),                   
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  } 
}