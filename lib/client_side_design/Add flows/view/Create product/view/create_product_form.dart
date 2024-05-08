import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20product/controller/create_product_controller.dart';

class CreaeteProductScreenform extends GetWidget<CreateProductController>{
const CreaeteProductScreenform({super.key});
@override 
Widget build(BuildContext context){
return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
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
              SizedBox(height: 20.h,),
              const CustomTextField(
                heading: 'Product Name',
                title: 'Write Here',
              ),
              SizedBox(height: 20.h,),
              const CustomTextField(
                heading: 'Product Quantity',
                title: 'Write Here',
              ),
              SizedBox(height: 25.h,),
              const CustomTextField(
                heading: 'Product Description',
                title: 'Write Here',
              ),
              SizedBox(height: 20.h,),
              const CustomTextField(
                heading: 'Product Care Advice',
                title: 'Write Here',
              ),  
              SizedBox(height: 20.h,),
              const CustomTextField(
                heading: 'Product Material',
                title: 'Write Here',
              ),  
              
              // ignore: prefer_const_constructors
              50.height,
              AppButton(title: 'Post event', 
               onTap: () async {
                    controller.createProduct();
                  }),
              SizedBox(height: 10,)
          
            ],
          ),
        ),
    );
}

}