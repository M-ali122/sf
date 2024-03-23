import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/resources/icon/icon.dart';

class Notifications extends StatelessWidget {
  Notifications({super.key});

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
                    'Notification',
                    style: theme.textTheme.headline1,
                  ),
                ],
              ),
              toggleButton('General Notification'),
            ],
          ),
        ),
      ),
    );
  }

  bool isSwitched = true;
  Widget toggleButton(String? title) {
    return ListTile(
      title: Text(title!),
      trailing: Switch(
        value: isSwitched,
        onChanged: (value) {},

        activeColor: Color.fromARGB(66, 66, 66, 1), // Color when switch is ON
        inactiveThumbColor: Colors.grey, // Color when switch is OFF
      ),
    );
  }
}
