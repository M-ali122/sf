import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_post/controller/switch_controller.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class CreatePostScreen extends StatelessWidget {
  SwitchController switchcontroller = Get.put(SwitchController());
   CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children:  [
          SizedBox(height: 40.h,),

           Row(
            children: [
               GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios_new,color: Colors.grey,)),
              SizedBox(width: 20.w,),
               const Text(
            'Create post',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(33, 33, 33, 1)),
          ),
            ],
          ),
          SizedBox(height: 30.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 16,top: 20,right: 0,bottom: 20),

                    height:132.h,
                    width: 264.w,
                    decoration: BoxDecoration(
                      color: AppColor.backGroundSilver,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        hintMaxLines: 4,
                        
                        hintText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore  magna aliqua.',
                        hintStyle: TextStyle(fontSize: 14)
                      ),
                    )
                  ),
                  Container(
                    height: 132.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: AppColor.GreyScale100),
                    child: Center(
                    
                      child: Image.asset('assets/cpimage.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),

// 3 containers buttons in a row  starts herer

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Container(
                    height: 32.h,
                    width: 110,
                    padding: const EdgeInsets.only(left: 16,top: 6,right: 16,bottom: 6),
                    decoration: BoxDecoration(
                      color: AppColor.GreyScale100,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Icon(FontAwesomeIcons.hashtag,size: 10,),
                        Text('Hashtag',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Container(
                    height: 32.h,
                    width: 110,
                    padding: const EdgeInsets.only(left: 16,top: 6,right: 16,bottom: 6),
                    decoration: BoxDecoration(
                      color: AppColor.GreyScale100,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Icon(FontAwesomeIcons.at,size: 10,),
                        Text('Hashtag',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Container(
                    height: 32.h,
                    width: 110,
                    padding: const EdgeInsets.only(left: 16,top: 6,right: 16,bottom: 6),
                    decoration: BoxDecoration(
                      color: AppColor.GreyScale100,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Icon(FontAwesomeIcons.video,size: 10,),
                        Text('Hashtag',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  
                  
                ],
              ),

// divider

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  
                  color: AppColor.GreyScale100,
                ),
              ),

              // three listtile 

               SizedBox(
                child:  Column(
                  children: [
                    const ListTile(
                      leading: Icon(FontAwesomeIcons.user),
                      title: Text('Tag People',style: TextStyle(fontSize: 18),),
                      trailing: Icon(FontAwesomeIcons.chevronRight),
                    ),const ListTile(
                      leading: Icon(Icons.lock_outline_rounded),
                      title: Text('Visible to Everyone',style: TextStyle(fontSize: 18),),
                      trailing: Icon(FontAwesomeIcons.chevronRight),
                    ),
                    ListTile(
                      leading: const Icon(FontAwesomeIcons.commentDots),
                      title: const Text('Allow Comments',style: TextStyle(fontSize: 18),),
                      trailing: Obx(() => Switch(
                        
                        inactiveTrackColor: Colors.white,
                        
                        activeColor: const Color(0xff475736),
                        value: switchcontroller.notification.value, onChanged: (value){

                        switchcontroller.turnSwitch(value);
                        
                        
                      
                      }))
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.h,),

              // Automatically shares to line

              const Row(
                children: [
                   Text(
            'Automatically share to:',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(33, 33, 33, 1)),
          ),
                ],
              ),
              SizedBox(height: 10.h,),

              // icons row starts here

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 48.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColor.GreyScale100
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.whatsapp,color: Color(0xffC9B372),),
                                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 48.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColor.GreyScale100
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.instagram,color: Color(0xffC9B372),),
                                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 48.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColor.GreyScale100
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.facebookF,color: Color(0xffC9B372)),
                                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      
                      height: 48.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColor.GreyScale100
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.twitter,color: Color(0xffC9B372)),
                                        ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80.h,),

              // second devider

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  
                  color: AppColor.GreyScale100,
                ),
              ), 
              SizedBox(height: 50.h,),

              // button starts from here

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 18,top: 16,right: 18,bottom: 16),
                    height: 58.h,
                    width: 184.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColor.backGroundSilver
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.string(Svgs.vectortwo),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text('Drafts',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 58.h,
                    width: 184.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: AppColor.mainGradient
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        SvgPicture.string(Svgs.vector),
                         const Padding(
                           padding: EdgeInsets.only(left: 15),
                           child: Text('Post',style:  TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold,),),
                         )
                      ],
                    ),
                  )
                ],
              )



        ],
      ),
    );
  }
}
