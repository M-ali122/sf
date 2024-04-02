import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/resources/icon/icon.dart';

class Notifications extends StatefulWidget {
  Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                    'Notification',
                    style: theme.textTheme.headline1,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              toggleButton('General Notification'),
              toggleButton('Promotion'),
              toggleButton('Order update'),
              toggleButton('Community mention'),
              toggleButton('App Updates'),
            ],
          ),
        ),
      ),
    );
  }

  bool isSwitched = false;

  Widget toggleButton(String? title) {
    return ListTile(
      title: Text(title!),
      trailing: Switch(
        value: isSwitched,
        onChanged: (value) {
          print(value);
          setState(() {
            isSwitched = value;
          });
        },
        // activeTrackColor: Color.fromRGBO(71, 87, 54, 1),
        // activeColor: Colors.white,

        // inactiveTrackColor: Colors.white,

        // inactiveThumbColor:
        //     Color.fromRGBO(71, 87, 54, 1), // Color when switch is OFF
      ),
    );
  }
}
