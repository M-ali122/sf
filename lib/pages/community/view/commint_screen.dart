import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/community/view/desinger_profile.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class CommintScreen extends StatelessWidget {
  static String route = 'CommintScreen';
  CommintScreen({super.key});

  final theme = Get.theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 428.w,
              height: 530.06.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/community2.png'),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SizedBox(
                      height: 100.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.string(
                        Appicons.backIcon,
                        color: AppColor.white,
                      ),
                    ),
                     SizedBox(
                      height: 30.h,
                    ),
                    ListTile(
                      onTap: (){
                        Get.to(()=> DesignerProfile());
                      },
                      contentPadding: const EdgeInsets.only(right: 20),
                      leading: const CircleAvatar(
                        radius: 25,
                        foregroundImage: AssetImage('assets/profile2.png'),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'User Name',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColor.white),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          '3 Hours ago',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColor.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'The new air jordan is wild.',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: AppColor.white),
                          ),
                          TextSpan(
                            text: ' #Nike',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: const Color.fromRGBO(201, 179, 114, 1)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500.0),
              child: Center(child: Image.asset('assets/emoji.png')),
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.66),
              child: Container(
                width: Get.width,
                height: 140,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: -20),
                        title: const Text('Kristin Watson'),
                        leading: const CircleAvatar(
                          radius: 25,
                          foregroundImage: AssetImage('assets/profile3.png'),
                        ),
                        trailing: PopupMenuButton(
                          // padding: EdgeInsets.only(right: 10,top: 20),
                          position: PopupMenuPosition.under,
                          color: AppColor.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(Appicons.profileBorderplus),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Follow user'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(
                                      Appicons.dangertriangleBorder),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Flag comment'),
                                ],
                              ),
                            ),
                          ],
                          onSelected: (value) {
                            // Handle selection
                            print('Selected: $value');
                          },
                          child: SvgPicture.string(Appicons.moresquareBorder),
                        ),

                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Yes it is !!!',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/smileEmoji.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '20',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColor.black),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            '3 days ago',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColor.GreyScale700),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Reply',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColor.GreyScale700),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.84),
              child: Container(
                width: Get.width,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.string(Svgs.divider),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: -20),
                        title: const Text('Jhon'),
                        leading: const CircleAvatar(
                          radius: 25,
                          foregroundImage: AssetImage('assets/profile4.png'),
                        ),
                        trailing: SvgPicture.string(Appicons.moresquareBorder),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Mamamia! the color is insane i love it so much !!!!!',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/smileEmoji.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '20',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColor.black),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            '3 days ago',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColor.GreyScale700),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Reply',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: AppColor.GreyScale700),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 150,
        width: Get.width,
        color: AppColor.white,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey, // Choose the color of your border
                    width: 1.0, // Choose the width of your border
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    Image.asset('assets/allEmoji.png'),
                    const SizedBox(
                        height:
                            10), // Adding some space between emoji and TextField
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Color.fromRGBO(250, 250, 250,
                            1), // Change the color as per your requirement
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color.fromRGBO(201, 179, 114, 1)),
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'Message...',
                                hintStyle: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColor.GreyScale500),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                border:
                                    InputBorder.none, // Remove default border
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: SvgPicture.string(Appicons.image3border),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 16),
                            child: SvgPicture.string(
                              Appicons.cameraBorder,
                              color: AppColor.GreyScale500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 56,
                              width: 56,
                              decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: AppColor.primaryColor500,
                              ),
                              child: Center(
                                child: SvgPicture.string(
                                  Appicons.send,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
