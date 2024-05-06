import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../helper/view/message_bubble.dart';
import '../../../resources/icon/icon.dart';
import '../../profile/view/setting.dart';

class ChatScreen extends StatefulWidget {
  static const String route = 'ChatScreen';
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {Get.back();},
                      child: SvgPicture.string(
                        Appicons.backIcon,
                      ),
                    ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    "Designer Name",
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                      color: Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                  Spacer(),
                  SvgPicture.string(Appicons.moresquareBorder),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return MessageBubble(
                      isMe: true,
                      sender: "zain",
                      text: "Hi , good morning 😄",
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

          

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 312.w,
                    height: 56.h,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Message...",
                        hintStyle: theme.textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(158, 158, 158, 1)),
                        filled: true,
                        fillColor: Color.fromRGBO(250, 250, 250, 1),
                        suffixIcon: Container(
                          width: 45,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.string(
                                Appicons.image3,
                                width: 15,
                                height: 15,
                                color: Color.fromRGBO(158, 158, 158, 1),
                              ),
                              SvgPicture.string(
                                Appicons.camera,
                                width: 15,
                                height: 15,
                                color: Color.fromRGBO(158, 158, 158, 1),
                              ),
                            ],
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                          borderSide: BorderSide.none, // Remove border
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                          borderSide: BorderSide.none, // Remove border
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                          borderSide: BorderSide.none, // Remove border
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(114, 151, 94, 1), // Start color
                          Color.fromRGBO(71, 87, 54, 1), // End color
                        ],
                        begin: Alignment
                            .topLeft, // Optional: specify gradient direction
                        end: Alignment
                            .bottomRight, // Optional: specify gradient direction
                        stops: [0.0, 1.0], // Optional: specify color stops
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.string(
                        Appicons.send,
                        width: 19,
                        height: 19,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
