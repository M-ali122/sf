import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/bottom_sheet.dart';
import 'package:sf_app/pages/order/view/order_detail_tabs.dart';
import 'package:sf_app/resources/color/app_color.dart';

// ignore: must_be_immutable
class OrderView extends StatelessWidget {
  static String route = 'OrderView';
   OrderView({super.key});

  final theme = Get.theme;

  var itemStatusType = [
    'Pending',
    'Processing',
    'Shipped',
  ];

  var itemStatusTypeColor = [
     const Color.fromRGBO(201, 179, 114, 1),
    const Color.fromRGBO(255, 87, 38, 1),
    const Color.fromRGBO(71, 87, 54, 1)
  ]; 
  var itemPhotosList = [
    'assets/shoe.png',
    'assets/bag.png',
    'assets/jogger.png'
  ];

  var orderStatusContainerColor = [
    const Color.fromRGBO(250, 204, 21, 0.08),
    const Color.fromRGBO(255, 152, 0, 0.08),
    const Color.fromRGBO(76, 175, 80, 0.08)
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SafeArea(
          child: ListView(
            children: [
              const SizedBox(height: 24,),
              Row(
                children: [
                  Image.asset('assets/s_f_logo.png'),
                  const SizedBox(width: 10 ,),
                  Text(
                    'Orders',
                    style: theme.textTheme.displayLarge,
                    )
                ],
              ),
              const SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  fillColor: AppColor.GreyScale50,
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10),
                    child: Icon(Icons.search, size: 30, color: AppColor.GreyScale400),
                  ),
                  hintText: 'Search order',
                  hintStyle: const TextStyle(color: AppColor.GreyScale400),
                ),
              ),
              const SizedBox(height: 20,),
              ListView.builder(
                itemCount: itemPhotosList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: GestureDetector(
                    onTap: (){
                      _showDetailBottomSheet(context);
                    },
                    child: Container(
                      height: 170.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: AppColor.white,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 60,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            color: Color.fromRGBO(4, 6, 15, 0.05)
                          )
                        ]
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 33,
                            left: 20,
                            child: Container(
                              height: 102,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColor.backGroundSilver
                              ),
                              child: Center(
                                child: Image.asset(itemPhotosList[index]),
                                ),
                            ),
                          ),
                          Positioned(
                            left: 150,
                            top: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Product Name',
                                  style: theme.textTheme.labelLarge,
                                  ),
                                  const SizedBox(height: 10 ,),
                                Text('Client Name',
                                 style: theme.textTheme.bodySmall,
                                ),
                                const SizedBox(height: 10,),
                                  Container(
                                    height: 25,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: orderStatusContainerColor[index]
                                    ),
                                    child: Center(
                                      child: Text(
                                        itemStatusType[index],
                                        style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                          color: itemStatusTypeColor[index]
                                        ),
                                        ),
                                    ),
                                  ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text('44.00 SAR',
                                    style: theme.textTheme.bodyLarge,
                                    ),
                                    const SizedBox(width: 3,),
                                    AppButton(
                                      title: 'See detail',
                                       onTap: (){
                                        Get.toNamed(OrderTabbarScreen.route);
                                       },
                                       width: 100,
                                       height: 32,
                                       )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                                    ),
                  );
                },)
            ],
          ),
        ),
      ),
    );
  }
   void _showDetailBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return OrderDetailBottomSheet(); // Use the bottom sheet class here
      },
    );
  }
}