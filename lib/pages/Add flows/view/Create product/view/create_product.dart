import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';
import 'package:sf_app/pages/Add%20flows/view/Create%20product/view/create_product_two.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({super.key});

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Spacer(),
              AppButton(title: 'Post event', onTap: () {Get.to(ProductScreenTwo());}),
              SizedBox(height: 10,)

            ],
          ),
        ),
      ),

    );
  }
}