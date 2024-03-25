// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sf_app/helper/extensions/spacings.dart';
// import 'package:sf_app/helper/view/Appbutton.dart';
// import 'package:sf_app/resources/color/app_color.dart';
// import 'package:sf_app/resources/icon/icon.dart';

// class PaymentScreen extends StatelessWidget {
//   const PaymentScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Get.theme;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Paymnet',
//           style: theme.textTheme.headline1,
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             18.height,
//             Container(
//               height: 80.h,
//               width: 380.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 color: AppColor.white,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 60,
//                     offset: Offset(0, 4),
//                     spreadRadius: 0,
//                     color: Color.fromRGBO(4, 6, 15, 0.05)
//                   )
//                 ]
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(width: 24.w,),
//                   SvgPicture.string(Appicons.paypallogo),
//                   SizedBox(width: 10.w,),
//                   Text('PayPal',
//                   style: GoogleFonts.mulish(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 18,
//                     color: AppColor.Dark1
//                   ),),
//                   // SizedBox(width: 24.w,),
//                   Spacer(),
//                   Icon(Icons.circle_outlined,size: 20,color: AppColor.secondaryColor500,),
//                   SizedBox(width: 24.w,),
//                 ],
//               ),
//             ),
//             SizedBox(height: 25,),
//             Container(
//               height: 80.h,
//               width: 380.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 color: AppColor.white,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 60,
//                     offset: Offset(0, 4),
//                     spreadRadius: 0,
//                     color: Color.fromRGBO(4, 6, 15, 0.05)
//                   )
//                 ]
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(width: 24.w,),
//                   SvgPicture.string(Appicons.googlelogo),
//                   SizedBox(width: 10.w,),
//                   Text('Google Pay',
//                   style: GoogleFonts.mulish(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 18,
//                     color: AppColor.Dark1
//                   ),),
//                   // SizedBox(width: 24.w,),
//                   Spacer(),
//                   Icon(Icons.circle_outlined,size: 20,color: AppColor.secondaryColor500,),
//                   SizedBox(width: 24.w,),
//                 ],
//               ),
//             ),
//             SizedBox(height: 25,),
//             Container(
//               height: 80.h,
//               width: 380.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 color: AppColor.white,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 60,
//                     offset: Offset(0, 4),
//                     spreadRadius: 0,
//                     color: Color.fromRGBO(4, 6, 15, 0.05)
//                   )
//                 ]
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(width: 24.w,),
//                   SvgPicture.string(Appicons.applelogo),
//                   SizedBox(width: 10.w,),
//                   Text('Apple Pay',
//                   style: GoogleFonts.mulish(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 18,
//                     color: AppColor.Dark1
//                   ),
//                   ),
//                   // SizedBox(width: 24.w,),
//                   Spacer(),
//                   Icon(Icons.circle_outlined,size: 20,color: AppColor.secondaryColor500,),
//                   SizedBox(width: 24.w,),
//                 ],
//               ),
//             ),
//             SizedBox(height: 25,),
//             Container(
//               height: 80.h,
//               width: 380.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16),
//                 color: AppColor.white,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 60,
//                     offset: Offset(0, 4),
//                     spreadRadius: 0,
//                     color: Color.fromRGBO(4, 6, 15, 0.05)
//                   )
//                 ]
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(width: 24.w,),
//                   SvgPicture.string(Appicons.mastercardlogo),
//                   SizedBox(width: 10.w,),
//                   Text('.... .... .... .... 4679',
//                   style: GoogleFonts.mulish(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 18,
//                     color: AppColor.Dark1
//                   ),
//                   ),
//                   // SizedBox(width: 24.w,),
//                   Spacer(),
//                   Icon(Icons.circle_outlined,size: 20,color: AppColor.secondaryColor500,),
//                   SizedBox(width: 24.w,),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomSheet: Container(
//         height: 118.h,
//         width: Get.width,
//         decoration: const BoxDecoration(
//           border: Border(
//             top: BorderSide(color: Color(0xffF5F5F5)),
//           )
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RichText(
//               text: TextSpan(
//                style: GoogleFonts.urbanist(
//               fontWeight: FontWeight.w700,
//               fontSize: 24,
//               color:AppColor.Dark1
//             ),
//                 children: <TextSpan>[
//                   TextSpan(
//                     text: '88.00 SAR',
//                   ),
//                   TextSpan(
//                     text: '\n2 Articles',
//                     style: GoogleFonts.urbanist(
//               fontWeight: FontWeight.w500,
//               fontSize: 12,
//               color:AppColor.GreyScale500
//             ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 10.0,left: 40),
//               child: AppButton(
//                   width: 236.w, height: 58.h, title: 'Continue', onTap: () {}),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedOption = -1; // Initial selection

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: theme.textTheme.headline1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            18.height,
            _buildPaymentOption(
                Appicons.paypallogo, 'PayPal', 0), // Option 0
            SizedBox(height: 25),
            _buildPaymentOption(
                Appicons.googlelogo, 'Google Pay', 1), // Option 1
            SizedBox(height: 25),
            _buildPaymentOption(
                Appicons.applelogo, 'Apple Pay', 2), // Option 2
            SizedBox(height: 25),
            _buildPaymentOption(
                Appicons.mastercardlogo, 'MasterCard', 3), 
                40.height,
            Container(
              height: 58.h,
              width: 380.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromRGBO(243, 243, 243, 1),
              ),
              child: Center(
                child: Text('Add New Card',
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color.fromRGBO(53, 56, 63, 1)

                ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 118.h,
        width: Get.width,
        decoration: const BoxDecoration(
            border: Border(
          top: BorderSide(color: Color(0xffF5F5F5)),
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: AppColor.Dark1),
                children: <TextSpan>[
                  TextSpan(
                    text: '88.00 SAR',
                  ),
                  TextSpan(
                    text: '\n2 Articles',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColor.GreyScale500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 40),
              child: AppButton(
                  width: 236.w,
                  height: 58.h,
                  title: 'Continue',
                  onTap: () {
                    // Handle continue button tap
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOption(String iconData, String title, int index) {
    
    return InkWell(
      onTap: () {
        setState(() {
          selectedOption = index;
        });
      },
      child: Container(
        height: 80.h,
        width: 380.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColor.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 60,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  color: Color.fromRGBO(4, 6, 15, 0.05))
            ]),
        child: Row(
          children: [
            SizedBox(width: 24.w),
            SvgPicture.string(iconData),
            SizedBox(width: 10.w),
            Text(
              title,
              style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: AppColor.Dark1),
            ),
            Spacer(),
            Radio(
              activeColor: Color.fromRGBO(201, 179, 114, 1),
              fillColor: MaterialStatePropertyAll(Color.fromRGBO(201, 179, 114, 1),),
              value: index,
              groupValue: selectedOption,
              onChanged: (int? value) {
                setState(() {
                  selectedOption = value!;
                });
              },
            ),
            SizedBox(width: 24.w),
          ],
        ),
      ),
    );
  }
}
