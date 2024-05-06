import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;
    // return Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 5),
    //   child: Container(
    //     height: 125.h,
    //     width: 380.w,
    //     decoration: BoxDecoration(
    //       color: const Color.fromRGBO(255, 255, 255, 1),
    //       borderRadius: BorderRadius.circular(32),
    //       boxShadow: const [
    //         BoxShadow(
    //           offset: Offset(0, 4),
    //           blurRadius: 60,
    //           color: Color.fromRGBO(4, 6, 15, 0.05),
    //         ),
    //       ]
    //     ),
    //     child: ListTile(
    //       leading: Container(
    //         width: 56.w,
    //         height: 56.h,
    //         decoration: BoxDecoration(
    //           gradient: const LinearGradient(
    //             colors: [
    //               Color.fromRGBO(114, 151, 94, 1),
    //               Color.fromRGBO(71, 87, 54, 1),
    //             ]
    //           ),
    //           borderRadius: BorderRadius.circular(24.r),
    //         ),
    //         child: Padding(
    //           padding: const EdgeInsets.all(12.0),
    //           child: SvgPicture.string(Appicons.diccovery,color: Colors.white,),
    //         ),
    //       ),
    //       title: Row(
    //         children: [
    //           Text("Upcoming event",style: theme.textTheme.headline5!.copyWith(
    //             fontSize: 18.sp
    //           ),),
    //           const Spacer(),
    //           Container(
    //             width: 12.w,
    //             height: 12.h,
    //             decoration: const BoxDecoration(
    //               shape: BoxShape.circle,
    //               color: Color.fromRGBO(201, 179, 114, 1)
    //             ),
    //           )
    //         ],
    //       ),
    //       subtitle: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text("An event that you are interested in is close.",style: theme.textTheme.subtitle2!.copyWith(
    //               fontWeight: FontWeight.w500
    //           ),),
    //           Text("08:46 AM",style: theme.textTheme.caption!.copyWith(
    //             fontWeight: FontWeight.w500
    //           ),),
        
        
    //         ],
    //       ),
        
        
    //     ),
    //   ),
    // );
    return Container(
      height: 125.h,
      width: 380.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
      color: Colors.black
      ),
      // child: ListTile(
      //   leading: Icon(icon),
      // ),
    );
  }
}
