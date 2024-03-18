import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/icon/icon.dart';

class ReviewField extends StatelessWidget {
  const ReviewField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          leading: CircleAvatar(
            radius: 25,
          ),
          title: Text(
            'Kristin Watson',
            style: GoogleFonts.mulish(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color.fromRGBO(33, 33, 33, 1),
            ),
          ),

          trailing: SvgPicture.string(Appicons.moresquareBorder),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.0, top: 5),
          child: Text(
            "Yes it is !!!",
            style: GoogleFonts.mulish(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(33, 33, 33, 1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.0, top: 8),
          child: Row(
            children: [
              Text(
                "20",
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "3 days ago",
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Color.fromRGBO(97, 97, 97, 1),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Reply",
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Color.fromRGBO(97, 97, 97, 1),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
