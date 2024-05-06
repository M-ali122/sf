import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/resources/icon/icon.dart';

class Language extends StatefulWidget {
  Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  final theme = Get.theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: SvgPicture.string(Appicons.backIcon)),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Language',
                    style: theme.textTheme.displayLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              radioField('English (US)', 1), // Passing unique value for English
              radioField('Arabic', 2),
            ],
          ),
        ),
      ),
    );
  }

  var selectedLanguage;

  Widget radioField(String title, int value) {
    return ListTile(
      title: Text(
        title,
      ),
      trailing: Radio(
        value: value,
        groupValue: selectedLanguage,
        onChanged: (newValue) {
          setState(() {
            selectedLanguage = newValue;
          });
        },
      ),
    );
  }
}
