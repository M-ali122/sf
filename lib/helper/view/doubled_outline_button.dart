import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/color/app_color.dart';

class DoubledOutlineButton extends StatelessWidget {
  String titleOne;
  String titleTwo;
   DoubledOutlineButton({super.key,required this.titleOne,required this.titleTwo});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // width: 380,
        height: 52,
        decoration: BoxDecoration(
            color: AppColor.backGroundSilver,
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          children: [
            Container(
              width: 155,
              height: 52,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(114, 151, 94, 1), // Starting color
                      Color.fromRGBO(71, 87, 54,
                          1), // Ending color (modify as needed)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                  child: Text(
                    "$titleOne",
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  )),
            ),
            Container(
              width: 155,
              height: 52,
              decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [
                //     Color.fromRGBO(114, 151, 94, 1), // Starting color
                //     Color.fromRGBO(71, 87, 54, 1),        // Ending color (modify as needed)
                //   ],
                // ),

                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                  child: Text(
                    "$titleTwo",
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
