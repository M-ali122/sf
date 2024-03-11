  import 'package:flutter/material.dart';
  import 'package:get/get.dart';

  import '../../resources/color/app_color.dart';

  class CustomTextField extends StatelessWidget {
    final String? title;
    final Widget? icon; // Corrected to Widget?
    final VoidCallback? onTap; // Corrected to VoidCallback?
    final Color? bg;
    final Color? fg;
    final String? heading;
    final controller;
    final onChange;
    final Color? filledColor;
    final bool? isVisible;
    const CustomTextField({
      Key? key,
      this.icon,
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
        margin: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading!,
            style: theme.textTheme.bodyText1,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.0),
              child: TextFormField(
                controller: controller,
                onChanged: onChange,
                obscureText: isVisible ?? false,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric( vertical: 15),
                  hintText: title,
                   // label: Text('Full Name'),
                   // focusedBorder: const UnderlineInputBorder(
                   //   // borderSide: BorderSide(color: AppColor.red)
                   // ),
                   prefixIcon: icon,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
