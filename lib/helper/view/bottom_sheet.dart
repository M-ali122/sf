// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sf_app/helper/extensions/spacings.dart';
// import 'package:sf_app/helper/view/Appbutton.dart';
// import 'package:sf_app/helper/view/product_bottom_sheet_tabs.dart';
// import 'package:sf_app/resources/color/app_color.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

// // ignore: must_be_immutable
// class OrderDetailBottomSheet extends StatefulWidget {
//   OrderDetailBottomSheet({super.key});

//   @override
//   State<OrderDetailBottomSheet> createState() => _OrderDetailBottomSheetState();
// }

// class _OrderDetailBottomSheetState extends State<OrderDetailBottomSheet> {
//   var theme = Get.theme;

//   SfRangeValues selectedRange = const SfRangeValues(0.0, 1000.0);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: Get.width,
//       decoration: const BoxDecoration(
//           color: AppColor.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(40),
//             topRight: Radius.circular(40),
//           )),
//       padding: const EdgeInsets.symmetric(horizontal: 24),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           SizedBox(height: 10.h),
//           Center(
//             child: Container(
//               height: 3.h,
//               width: 38.w,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(2),
//                   color: const Color.fromRGBO(224, 224, 224, 1)),
//             ),
//           ),
//           SizedBox(
//             height: 15.h,
//           ),
//           Center(
//             child: Text(
//               'Filter',
//               style: theme.textTheme.displayLarge,
//             ),
//           ),
//           const SizedBox(height: 16),
//           const Divider(
//             color: Color.fromRGBO(238, 238, 238, 1),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           Text(
//             'Date',
//             style: theme.textTheme.labelLarge,
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           ProductBottomShetFilterTabs(
//               titleOne: 'All',
//               titleFour: 'This month',
//               titleThree: 'This Week',
//               onIndexChanged: (value) {},
//               titleTwo: 'Today'),
//           const SizedBox(
//             height: 20,
//           ),
//           Text(
//             'Order Status',
//             style: theme.textTheme.labelLarge,
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           ProductBottomShetFilterTabs(
//             titleOne: 'All',
//             titleThree: 'Processing',
//             onIndexChanged: (value) {},
//             titleTwo: 'Pending',
//             titleFour: 'Shipped',
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Text(
//             'Order Price Range',
//             style: theme.textTheme.labelLarge,
//           ),
//           const SizedBox(
//             height: 30,
//           ),

//           //  SvgPicture.string(Svgs.priceSlider),

//           SfRangeSlider(
//             values: selectedRange,
//             min: 0.0,
//             max: 1000.0,
//             onChanged: (value) {
//               setState(() {
//                 selectedRange = value;
//               });
//             },
//             thumbShape: const SfThumbShape(),
//             showDividers: true,
//             activeColor: AppColor.secondaryColor500,
//             dragMode: SliderDragMode.onThumb,
//             inactiveColor: Color.fromRGBO(243, 243,243, 1),
//             startThumbIcon: const Icon(Icons.circle,size: 14,color: Colors.white,),
//             endThumbIcon: const Icon(Icons.circle,size: 14,color: Colors.white,),
//           ),
//            SizedBox(
//             height: 2.h,
//           ),
//           Row(
//             children: [
//               20.width,
//               Text('${selectedRange.start.round()}SAR',
//               style: GoogleFonts.mulish(
//                 fontSize: 14.sp,
//                 fontWeight: FontWeight.w700,
//                 color: AppColor.Dark1
//               ),
//               ),
//               const Spacer(),
//               Text('${selectedRange.end.round()}SAR',
//               style: GoogleFonts.mulish(
//                 fontSize: 14.sp,
//                 fontWeight: FontWeight.w700,
//                 color: AppColor.Dark1
//               ),
//               ),
//               20.width,
//             ],
//           ),
//           // Center(
//           //   child: Text(
//           //     'Selected Range: ${selectedRange.start.round()}  ${selectedRange.end.round()}',
//           //     style: TextStyle(fontSize: 16.sp),
//           //   ),
//           // ),
//           const SizedBox(
//             height: 20,
//           ),
//           const Divider(
//             color: Color.fromRGBO(238, 238, 238, 1),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               AppButton(
//                 width: 184.w,
//                 title: 'Reset',
//                 foreground: AppColor.black,
//                 onTap: () {
//                   Navigator.of(context).pop();
//                 },
//                 gradient: AppColor.buttonGredient,
//               ),
//               AppButton(
//                 width: 184.w,
//                 title: 'Apply',
//                 onTap: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 20.h,
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/product_bottom_sheet_tabs.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class OrderDetailBottomSheet extends StatefulWidget {
  OrderDetailBottomSheet({super.key});

  @override
  State<OrderDetailBottomSheet> createState() => _OrderDetailBottomSheetState();
}

class _OrderDetailBottomSheetState extends State<OrderDetailBottomSheet> {
  var theme = Get.theme;

  SfRangeValues selectedRange = const SfRangeValues(0.0, 1000.0);
  double startValue = 0.0;
  double endValue = 1000.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10.h),
          Center(
            child: Container(
              height: 3.h,
              width: 38.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: const Color.fromRGBO(224, 224, 224, 1)),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: Text(
              'Filter',
              style: theme.textTheme.displayLarge,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(
            color: Color.fromRGBO(238, 238, 238, 1),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Date',
            style: theme.textTheme.labelLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          ProductBottomShetFilterTabs(
              titleOne: 'All',
              titleFour: 'This month',
              titleThree: 'This Week',
              onIndexChanged: (value) {},
              titleTwo: 'Today'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Order Status',
            style: theme.textTheme.labelLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          ProductBottomShetFilterTabs(
            titleOne: 'All',
            titleThree: 'Processing',
            onIndexChanged: (value) {},
            titleTwo: 'Pending',
            titleFour: 'Shipped',
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Order Price Range',
            style: theme.textTheme.labelLarge,
          ),
          const SizedBox(
            height: 30,
          ),

          Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.center,
            children: [
              SfRangeSlider(
                values: selectedRange,
                min: 0.0,
                max: 1000.0,
                onChanged: (value) {
                  setState(() {
                    selectedRange = value;
                    startValue = value.start;
                    endValue = value.end;
                  });
                },
                thumbShape: const SfThumbShape(),
                showDividers: true,
                activeColor: AppColor.secondaryColor500,
                dragMode: SliderDragMode.onThumb,
                inactiveColor: Color.fromRGBO(243, 243, 243, 1),
                startThumbIcon: const Icon(Icons.circle, size: 14, color: Colors.white),
                endThumbIcon: const Icon(Icons.circle, size: 14, color: Colors.white),
              ),
              Positioned(
                top: 46.h,
                left: (selectedRange.start / 1000.0) * (Get.width - 55), // Adjusted based on slider position
                child: Text(
                  '${startValue.round()} SAR',
                  style: GoogleFonts.mulish(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColor.Dark1,
                  ),
                ),
              ),
              Positioned(
                top: 45.h,
                right: 30.w,
                left: (selectedRange.end / 1000.0) * (Get.width - 120), // Adjusted based on slider position
                child: Text(
                  '${endValue.round()} SAR',
                  style: GoogleFonts.mulish(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColor.Dark1,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Color.fromRGBO(238, 238, 238, 1),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButton(
                width: 184.w,
                title: 'Reset',
                foreground: AppColor.black,
                onTap: () {
                  Navigator.of(context).pop();
                },
                gradient: AppColor.buttonGredient,
              ),
              AppButton(
                width: 184.w,
                title: 'Apply',
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
