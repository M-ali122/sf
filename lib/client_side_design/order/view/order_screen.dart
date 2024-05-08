// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sf_app/client_side_design/products/views/product_card_view.dart';
// import 'package:sf_app/helper/extensions/spacings.dart';
// import 'package:sf_app/resources/color/app_color.dart';

// // ignore: must_be_immutable
// class OrderView extends StatelessWidget {
//   static String route = 'OrderView';
//    OrderView({super.key});

//   final theme = Get.theme;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: EdgeInsets.symmetric(horizontal: 24.w),
//         physics: const NeverScrollableScrollPhysics(),
//         children: [
//            SizedBox(height: 45.h,),
//           Row(
//             children: [
//               Image.asset('assets/s_f_logo.png'),
//                SizedBox(width: 10.h,),
//               Text(
//                 'Orders',
//                 style: GoogleFonts.mulish(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 24.sp,
//                   color: const Color.fromRGBO(33, 33, 33, 1),
//                 )
//                 )
//             ],
//           ),
//            SizedBox(height: 20.h,),
//           TextField(
//             decoration: InputDecoration(
//               filled: true,
//               contentPadding: const EdgeInsets.symmetric(vertical: 20),
//               fillColor: AppColor.GreyScale50,
//               focusColor: Colors.white,
//               focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(color: Colors.white, width: 2.0),
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               border: OutlineInputBorder(
//                 borderSide: const BorderSide(color: Colors.white, width: 2.0),
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(color: Colors.white, width: 2.0),
//                 borderRadius: BorderRadius.circular(30),
//               ),
            
//               prefixIcon: const Padding(
//                 padding: EdgeInsets.only(left: 20.0, right: 10),
//                 child: Icon(Icons.search, size: 30, color: AppColor.GreyScale400),
//               ),
//               hintText: 'Search order',
//               hintStyle: const TextStyle(color: AppColor.GreyScale400),
//             ),
//           ),
//           //  SizedBox(height: 10.h,),
//           const ProductView(),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/client_side_design/products/views/product_card_view.dart';
import 'package:sf_app/resources/color/app_color.dart';

class OrderView extends StatelessWidget {
  static String route = 'OrderView';
  OrderView({super.key});

  final theme = Get.theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h),
            Row(
              children: [
                Image.asset('assets/s_f_logo.png'),
                SizedBox(width: 10.h),
                Text(
                  'Orders',
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: const Color.fromRGBO(33, 33, 33, 1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
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
                hintText: 'Search order',
                hintStyle: const TextStyle(color: AppColor.GreyScale400),
              ),
            ),
            SizedBox(height: 10.h),
            const Expanded(
              child: ProductView(),
            ),
          ],
        ),
      ),
    );
  }
}
