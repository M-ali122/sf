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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/client_side_design/products/controllers/product_controller.dart';

import '../../resources/color/app_color.dart';

class ProductCategoryTabs extends StatefulWidget {
  final String titleOne;
  final String titleTwo;
  final String titleThree;
  final String titleFour;
  final String titleFive;
  final String titleSix;
  final double? tabWidth; // Optional parameter for tab width
  final double? tabHeight; // Optional parameter for tab height

  final ValueChanged<int> onIndexChanged;
  ProductCategoryTabs({
    Key? key,
    required this.titleOne,
    required this.titleTwo,
    required this.titleThree,
    required this.titleFour,
    required this.titleFive,
    required this.titleSix,
    required this.onIndexChanged,
    this.tabWidth,
    this.tabHeight,
  }) : super(key: key);

  @override
  _ProductCategoryTabsState createState() => _ProductCategoryTabsState();
}

class _ProductCategoryTabsState extends State<ProductCategoryTabs> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: widget.tabHeight ?? 110.h, // Use provided tabHeight or default value
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                widget.onIndexChanged(_selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 72.w, // Use provided tabWidth or default value
                height: widget.tabHeight ?? 42.h, // Use provided tabHeight or default value
                decoration: BoxDecoration(
                  color: _selectedIndex == 0 ? Color(0xffC9B372) : Color(0xffF3F3F3),
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
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                widget.onIndexChanged(_selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 95.w,
                height: widget.tabHeight ?? 42.h,
                decoration: BoxDecoration(
                  color: _selectedIndex == 1 ? Color(0xffC9B372) : Color(0xffF3F3F3),
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
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                widget.onIndexChanged(_selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 77.w,
                height: widget.tabHeight ?? 42.h,
                decoration: BoxDecoration(
                  color: _selectedIndex == 2 ? Color(0xffC9B372) : Color(0xffF3F3F3),
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
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
                widget.onIndexChanged(_selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 69.w,
                height: widget.tabHeight ?? 42.h,
                decoration: BoxDecoration(
                  color: _selectedIndex == 3 ? Color(0xffC9B372) : Color(0xffF3F3F3),
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
        SizedBox(height: 20.h,),
        Row(
          
          children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                  widget.onIndexChanged(_selectedIndex);
                },
              child: Container(
                width: widget.tabWidth ?? 80.w,
                height: widget.tabHeight ?? 38.h,
                decoration: BoxDecoration(
                  color: _selectedIndex == 4 ? Color(0xffC9B372) : Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleFive,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: _selectedIndex == 4
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
          ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 5;
                });
                widget.onIndexChanged(_selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 120.w,
                height: widget.tabHeight ?? 38.h,
                decoration: BoxDecoration(
                  color: _selectedIndex == 5 ? Color(0xffC9B372) : Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleSix,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: _selectedIndex == 5
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
        ],)
        
        
        ],
        )
      ),
    );
  }
}


// this component for tabs of product sub category

class ProductSubCategoryTabs extends StatefulWidget {
  final String titleOne;
  final String titleTwo;
  final String titleThree;
  final String titleFour;
  
  final double? tabWidth; // Optional parameter for tab width
  final double? tabHeight; // Optional parameter for tab height

  final ValueChanged<int> onIndexChanged;
  const ProductSubCategoryTabs({Key? key,required this.titleOne,
    required this.titleTwo,
    required this.titleThree,
    required this.titleFour,
    
    required this.onIndexChanged,
    this.tabWidth,
    this.tabHeight,}): super(key: key);

  @override
  State<ProductSubCategoryTabs> createState() => _ProductSubCategoryTabsState();
}

class _ProductSubCategoryTabsState extends State<ProductSubCategoryTabs> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: double.maxFinite,
        height: widget.tabHeight ?? 110.h, // Use provided tabHeight or default value
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
                widget.onIndexChanged(selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 80.w, // Use provided tabWidth or default value
                height: widget.tabHeight ?? 38.h, // Use provided tabHeight or default value
                decoration: BoxDecoration(
                  color: selectedIndex == 0 ? Color(0xffC9B372) : Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleOne,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: selectedIndex == 0
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
                widget.onIndexChanged(selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 110.w,
                height: widget.tabHeight ?? 38.h,
                decoration: BoxDecoration(
                  color: selectedIndex == 1 ? Color(0xffC9B372) : Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleTwo,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: selectedIndex == 1
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
                widget.onIndexChanged(selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 120.w,
                height: widget.tabHeight ?? 38.h,
                decoration: BoxDecoration(
                  color: selectedIndex == 2 ? Color(0xffC9B372) : Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleThree,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: selectedIndex == 2
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
            
            
            
            
          ],
        ),
        SizedBox(height: 20.h,),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
                widget.onIndexChanged(selectedIndex);
              },
              child: Container(
                width: widget.tabWidth ?? 80.w,
                height: widget.tabHeight ?? 38.h,
                decoration: BoxDecoration(
                  color: selectedIndex == 3 ? Color(0xffC9B372) : Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    widget.titleFour,
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                      color: selectedIndex == 3
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
        
        
        
        
        ],
        )
      ),
    );
  }
}
