import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/doubled_outline_button.dart';
import 'package:sf_app/helper/view/textfield.dart';
import 'package:sf_app/resources/icon/icon.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});

  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.string(Appicons.backIcon),
                    const SizedBox(
                      width: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Edit profile',
                      style: theme.textTheme.headline1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                DoubledOutlineButton(
                    titleOne: "Information", titleTwo: 'Photo'),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: CustomTextField(
                    heading: "Full Name",
                    title: 'Write Here',
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: CustomTextField(
                    heading: "User Name",
                    title: 'Write Here',
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: CustomTextField(
                    heading: "Email",
                    title: 'Write Here',
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: CustomTextField(
                    heading: "Phone Number",
                    title: 'Write Here',
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: CustomTextField(
                    heading: "Bio (optional)",
                    title: 'Write Here',
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                AppButton(title: 'Update', onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
