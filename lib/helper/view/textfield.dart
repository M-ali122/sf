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
    final Color? filledColor; // Corrected FilledColor to camelCase
    const CustomTextField({
      Key? key,
      this.icon,
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
       // final ThemeData theme = Theme.of(context);
      final theme = Get.theme;
      return Container(
        width: Get.width,
        // height: 54.h,
        margin: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading!),
            // SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: TextFormField(
                controller: controller,
                onChanged: onChange,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric( vertical: 15),
                  hintText: title,
                   focusedBorder: const UnderlineInputBorder(
                     borderSide: BorderSide(color: AppColor.GreyScale500),
                   ),
                   hintStyle: theme.textTheme.headline5,
                   prefixIcon: icon,
                  prefixIconColor: const Color(0xffB0B0B0),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
