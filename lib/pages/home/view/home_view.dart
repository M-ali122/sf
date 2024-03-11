import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/bottom_buttion.dart';
import 'package:sf_app/resources/icon/icon.dart';

class HomeView extends StatelessWidget {
  static const String route = "HomeView";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      bottomSheet: SizedBox(
        width: Get.width,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomButton(title: 'Home', icon: icon.home,onTap: (){
              
            },),
            BottomButton(title: 'Orders', icon: icon.document,),
            BottomButton(title: 'Community', icon: icon.diccovery,),
            BottomButton(title: 'Profile', icon: icon.profile,),

          ],
        ),
      ),
    );
  }
}
