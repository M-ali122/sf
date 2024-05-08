import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_post/view/create_post_two.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  const EdgeInsets.all(10.0),
          child: Column(
            children: [
               SizedBox(
                  height: 30.h,
                ),
                const Text(
                'Fill the information below',
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(33, 33, 33, 1)),
              ),
              SizedBox(height: 30.h,),
              const CustomTextField(
                heading: 'Event Name',
                title: 'Write Here',
              ),
              SizedBox(height: 25.h,),
              const CustomTextField(
                heading: 'Event Date',
                title: 'Write Here',
              ),
              SizedBox(height: 25.h,),
              const CustomTextField(
                heading: 'Event Hour',
                title: 'Write Here',
              ),
              SizedBox(height: 25.h,),
              const CustomTextField(
                heading: 'Event Description',
                title: 'Write Here',
              ),  
               Spacer(),
              // ignore: prefer_const_constructors
              AppButton(title: 'Post event', onTap: () {Get.to(CreatePostTWo());}),
              SizedBox(height: 10.h,)

            ],
          ),
        ),
      ),
    );
  }
}