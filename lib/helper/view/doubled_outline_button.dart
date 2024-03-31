// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../resources/color/app_color.dart';

// class DoubledOutlineButton extends StatelessWidget {
//   String titleOne;
//   String titleTwo;
//    DoubledOutlineButton({super.key,required this.titleOne,required this.titleTwo});

//   @override
//   Widget build(BuildContext context) {
//     return   Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         width: 380.w,
//         height: 52.h,
//         decoration: BoxDecoration(
//             color: AppColor.backGroundSilver,
//             borderRadius: BorderRadius.circular(40)),
//         child: Row(
//           children: [
//             Container(
//               width: 190.w,
//               height: 52.h,
//               decoration: BoxDecoration(
//                   gradient: const LinearGradient(
//                     colors: [
//                       Color.fromRGBO(114, 151, 94, 1), // Starting color
//                       Color.fromRGBO(71, 87, 54,
//                           1), // Ending color (modify as needed)
//                     ],
//                   ),
//                   borderRadius: BorderRadius.circular(40)),
//               child: Center(
//                   child: Text(
//                     "$titleOne",
//                     style: GoogleFonts.mulish(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 16.sp,
//                       color: const Color.fromRGBO(255, 255, 255, 1),
//                     ),
//                   )),
//             ),
//             Container(
//               width: 190.w,
//               height: 52.h,
//               decoration: BoxDecoration(
//                 // gradient: LinearGradient(
//                 //   colors: [
//                 //     Color.fromRGBO(114, 151, 94, 1), // Starting color
//                 //     Color.fromRGBO(71, 87, 54, 1),        // Ending color (modify as needed)
//                 //   ],
//                 // ),

//                   borderRadius: BorderRadius.circular(40)),
//               child: Center(
//                   child: Text(
//                     "$titleTwo",
//                     style: GoogleFonts.mulish(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 16.sp,
//                       color: const Color.fromRGBO(33, 33, 33, 1),
//                     ),
//                   )),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/color/app_color.dart';

class DoubledOutlineButton extends StatefulWidget {
  final String titleOne;
  final String titleTwo;

  DoubledOutlineButton({Key? key, required this.titleOne, required this.titleTwo})
      : super(key: key);

  @override
  _DoubledOutlineButtonState createState() => _DoubledOutlineButtonState();
}

class _DoubledOutlineButtonState extends State<DoubledOutlineButton> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 380.w,
        height: 52.h,
        decoration: BoxDecoration(
            color: AppColor.backGroundSilver,
             borderRadius: BorderRadius.circular(40)),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Container(
                width: 190.w,
                height: 52.h,
                decoration: BoxDecoration(
                    gradient: _selectedIndex == 0 ? AppColor.mainGradient:
                  null,
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                  "${widget.titleOne}",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: _selectedIndex == 0
                        ? const Color.fromRGBO(255, 255, 255, 1)
                        : const Color.fromRGBO(33, 33, 33, 1),
                  ),
                )),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Container(
                width: 190.w,
                height: 52.h,
                decoration: BoxDecoration(
                  gradient: _selectedIndex == 1? AppColor.mainGradient : null,
                  borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                  "${widget.titleTwo}",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: _selectedIndex == 1
                        ? const Color.fromRGBO(255, 255, 255, 1)
                        : const Color.fromRGBO(33, 33, 33, 1),
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





