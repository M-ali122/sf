// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoustomListile extends StatelessWidget {
  bool? countDot = false;
  CoustomListile({super.key, this.countDot});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 60,
        height: 51,
        decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/shoes.png"))),
      ),
      title: Text(
        'Designer Name',
        style: GoogleFonts.mulish(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: const Color.fromRGBO(33, 33, 33, 1),
        ),
      ),
      subtitle: Text(
        'Still available?',
        style: GoogleFonts.mulish(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: const Color.fromRGBO(97, 97, 97, 1),
        ),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          countDot == true
              ? CircleAvatar(
                  radius: 10,
                  backgroundColor: const Color.fromRGBO(201, 179, 114, 1),
                  child: Center(
                      child: Text(
                    "2",
                    style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  )),
                )
              : const SizedBox.shrink(),
          const Spacer(),
          Text("20:20Pm",
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color.fromRGBO(97, 97, 97, 1),
              )),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
