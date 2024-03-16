  import 'package:flutter/material.dart';
  import 'package:get/get.dart';

  import '../../resources/color/app_color.dart';

  class CustomTextField extends StatelessWidget {
    final String? title;
    final Widget? icon; // Corrected to Widget?
    final VoidCallback? onTap; // Corrected to VoidCallback?
    final Color? bg;
    final Border? border;
    final Color? fg;
    final String? heading;
    final controller;
    final onChange;
    final Color? filledColor;
    final bool? isVisible;
    const CustomTextField({
      Key? key,
      this.icon,
      this.border,
      this.isVisible,
      this.heading,
      this.title,

      this.controller,
      this.onTap,
      this.onChange,
      this.bg,
      this.fg,
      this.filledColor,
    });

    @override
    Widget build(BuildContext context) {
      var theme = Get.theme;
      return Container(
        width: Get.width,
        // margin: EdgeInsets.only(left: 16,right: 16,bottom: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading!,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(33, 33, 33, 1)
              ),
            ),
            SizedBox(height: 8,),
            Padding(

              padding:  EdgeInsets.symmetric(horizontal: 2.0,),

              child: TextFormField(
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(33,33,33,1),
                ),
                controller: controller,
                onChanged: onChange,
                obscureText: isVisible ?? false,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric( vertical: 5),
                  hintText: title,
                   hintStyle: TextStyle(
                     fontWeight: FontWeight.w500,
                     fontSize: 24,
                     color: Color.fromRGBO(158, 158, 158, 1),
                   ),
                   prefixIcon: icon,
                ),

                // validator: (value) {
                //
                //
                // },
              ),
            ),
          ],
        ),
      );
    }
  }
