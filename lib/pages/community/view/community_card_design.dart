import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class CardDesign extends StatelessWidget {
  static String route = 'CardDesign'; 
   CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20,),
          // Container(
          //   height: 395,
          //   width: 380,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(24),
          //     color: AppColor.white,
          //     boxShadow: [
          //             BoxShadow(
          //               blurRadius: 3,
          //               offset: const Offset(0, 0),
          //               spreadRadius: 3,
          //               color: Colors.grey.withOpacity(0.1)
          //             ),
          //           ]
          //   ),
          // ),
        ],
      ),
    );
  }
}