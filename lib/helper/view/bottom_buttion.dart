// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomButton extends StatelessWidget {
  String icon;
  String title;
  VoidCallback? onTap;
  BottomButton({super.key,required this.title,required this.icon,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.string(icon),
          // Icon(Icons.home),
          Text(title,style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 10,
          ),),
        ],
      ),
    );
  }
}
