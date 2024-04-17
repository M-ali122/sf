// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sf_app/helper/extensions/spacings.dart';
// import 'package:sf_app/pages/products/controllers/product_controller.dart';

// import '../../resources/color/app_color.dart';

// // ignore: must_be_immutable
// class ProductBottomShetFilterTabs extends StatefulWidget {
//   ProductController controller = Get.put(ProductController());
//   final String titleOne;
//   final String titleTwo;
//   final String titleThree;
//   final String titleFour;

//   final ValueChanged<int> onIndexChanged;
//   ProductBottomShetFilterTabs(
//       {Key? key,
//       required this.titleOne,
//       required this.titleTwo,
//       required this.titleThree,
//        required this.titleFour,  
//       required this.onIndexChanged,
      
//       })
//       : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _ProductBottomShetFilterTabsState createState() => _ProductBottomShetFilterTabsState();
// }

// class _ProductBottomShetFilterTabsState extends State<ProductBottomShetFilterTabs> {
//   int _selectedIndex = 0;
 
//   ProductController controller = Get.put(ProductController());

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Container(
//         // width: Get.width,
//         height: 38.h,
//         decoration: BoxDecoration(
//             // color: AppColor.backGroundSilver,
//             borderRadius: BorderRadius.circular(24)),
//         child: Row(
//           children: [
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = 0;
//                 });
//               widget.onIndexChanged(_selectedIndex);
              
//               },
//               child: Container(
//                 width: 61.w,
//                 height: 38.h,
//                 decoration: BoxDecoration(
//                     gradient:
//                         _selectedIndex == 0 ? AppColor.mainGradient : AppColor.tabbarGradient,
//                     borderRadius: BorderRadius.circular(24)),
//                 child: Center(
//                     child: Text(
//                   widget.titleOne,
//                   style: GoogleFonts.mulish(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 16.sp,
//                     color: _selectedIndex == 0
//                         ? const Color.fromRGBO(255, 255, 255, 1)
//                         : const Color.fromRGBO(33, 33, 33, 1),
//                   ),
//                 )),
//               ),
//             ),
//             15.width,
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = 1;
//                 });
//                 // Navigate to ReviewField screen when second container is clicked
//               widget.onIndexChanged(_selectedIndex);
//               },
//               child: Container(
//                 width: 87.w,
//                 height: 38.h,
//                 decoration: BoxDecoration(
//                     gradient:
//                         _selectedIndex == 1 ? AppColor.mainGradient : AppColor.tabbarGradient,
//                     borderRadius: BorderRadius.circular(24)),
//                 child: Center(
//                     child: Text(
//                   widget.titleTwo,
//                   style: GoogleFonts.mulish(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 16.sp,
//                     color: _selectedIndex == 1
//                         ? const Color.fromRGBO(255, 255, 255, 1)
//                         : const Color.fromRGBO(33, 33, 33, 1),
//                   ),
//                 )),
//               ),
//             ),
//             15.width,
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = 2;
//                 });
//                 // Navigate to ReviewField screen when second container is clicked
//               widget.onIndexChanged(_selectedIndex);
//               },
//               child: Container(
//                 width: 120.w,
//                 height: 38.h,
//                 decoration: BoxDecoration(
//                     gradient:
//                         _selectedIndex == 2 ? AppColor.mainGradient : AppColor.tabbarGradient,
//                     borderRadius: BorderRadius.circular(24)),
//                 child: Center(
//                     child: Text(
//                   widget.titleThree,
//                   style: GoogleFonts.mulish(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 16.sp,
//                     color: _selectedIndex == 2
//                         ? const Color.fromRGBO(255, 255, 255, 1)
//                         : const Color.fromRGBO(33, 33, 33, 1),
//                   ),
//                 )),
//               ),
//             ),
//             15.width,
//             InkWell(
//               onTap: () {
//                 setState(() {
//                   _selectedIndex = 3;
//                 });
//                 // Navigate to ReviewField screen when second container is clicked
//               widget.onIndexChanged(_selectedIndex);
//               },
//               child: Container(
//                 width: 126.w,
//                 height: 38.h,
//                 decoration: BoxDecoration(
//                     gradient:
//                         _selectedIndex == 3 ? AppColor.mainGradient : AppColor.tabbarGradient,
//                     borderRadius: BorderRadius.circular(24)),
//                 child: Center(
//                     child: Text(
//                   widget.titleFour,
//                   style: GoogleFonts.mulish(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 16.sp,
//                     color: _selectedIndex == 3
//                         ? const Color.fromRGBO(255, 255, 255, 1)
//                         : const Color.fromRGBO(33, 33, 33, 1),
//                   ),
//                 )),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/pages/products/controllers/product_controller.dart';

import '../../resources/color/app_color.dart';

class ProductBottomShetFilterTabs extends StatefulWidget {
  ProductController controller = Get.put(ProductController());
  final String titleOne;
  final String titleTwo;
  final String titleThree;
  final String titleFour;
  final double? tabWidth; // Optional parameter for tab width
  final double? tabHeight; // Optional parameter for tab height

  final ValueChanged<int> onIndexChanged;
  ProductBottomShetFilterTabs({
    Key? key,
    required this.titleOne,
    required this.titleTwo,
    required this.titleThree,
    required this.titleFour,
    required this.onIndexChanged,
    this.tabWidth,
    this.tabHeight,
  }) : super(key: key);

  @override
  _ProductBottomShetFilterTabsState createState() => _ProductBottomShetFilterTabsState();
}

class _ProductBottomShetFilterTabsState extends State<ProductBottomShetFilterTabs> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: widget.tabHeight ?? 38.h, // Use provided tabHeight or default value
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                widget.onIndexChanged(_selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 61.w, // Use provided tabWidth or default value
                height: widget.tabHeight ?? 38.h, // Use provided tabHeight or default value
                decoration: BoxDecoration(
                  gradient: _selectedIndex == 0 ? AppColor.mainGradient : AppColor.tabbarGradient,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleOne,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: _selectedIndex == 0
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                widget.onIndexChanged(_selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 87.w,
                height: widget.tabHeight ?? 38.h,
                decoration: BoxDecoration(
                  gradient: _selectedIndex == 1 ? AppColor.mainGradient : AppColor.tabbarGradient,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleTwo,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: _selectedIndex == 1
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                widget.onIndexChanged(_selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 120.w,
                height: widget.tabHeight ?? 38.h,
                decoration: BoxDecoration(
                  gradient: _selectedIndex == 2 ? AppColor.mainGradient : AppColor.tabbarGradient,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleThree,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: _selectedIndex == 2
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
                widget.onIndexChanged(_selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 126.w,
                height: widget.tabHeight ?? 38.h,
                decoration: BoxDecoration(
                  gradient: _selectedIndex == 3 ? AppColor.mainGradient : AppColor.tabbarGradient,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleFour,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: _selectedIndex == 3
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
