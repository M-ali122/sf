import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SafeArea(
          child: Column(
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
                  hintText: 'Search Products, designers',
                  hintStyle: const TextStyle(color: AppColor.GreyScale400),
                ),
              ),
              const SizedBox(height: 20,),
                Container(
                  height: 170,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColor.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        offset: const Offset(0, 0),
                        spreadRadius: 1,
                        color: Colors.grey.withOpacity(0.1)
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
                            child: Image.asset('assets/shoe.png'),
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
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color.fromRGBO(250, 204, 21, 0.08)
                                ),
                                child: Center(
                                  child: Text(
                                    'Pending',
                                    style: GoogleFonts.mulish(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      color: AppColor.secondaryColor500
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
                                const SizedBox(width: 10,),
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
                const SizedBox(height: 20,),
                Container(
                  height: 170,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColor.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        offset: const Offset(0, 0),
                        spreadRadius: 1,
                        color: Colors.grey.withOpacity(0.1)
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
                            child: Image.asset('assets/bag.png'),
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
                              width: 73,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color.fromRGBO(255, 152, 0, 0.08)
                              ),
                              child: Center(
                                child: Text(
                                  'Preocessing',
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: AppColor.deepOrange
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
                                const SizedBox(width: 10,),
                                AppButton(
                                  title: 'See detail',
                                   onTap: (){},
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
                const SizedBox(height: 20,),
                Container(
                  height: 170,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColor.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        offset: const Offset(0, 0),
                        spreadRadius: 1,
                        color: Colors.grey.withOpacity(0.1)
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
                            child: Image.asset('assets/jogger.png'),
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
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color.fromRGBO(76, 175, 80, 0.08)
                              ),
                              child: Center(
                                child: Text(
                                  'Shipped',
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: AppColor.primaryColor500
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
                                const SizedBox(width: 10,),
                                AppButton(
                                  title: 'See detail',
                                   onTap: (){
                                    _showDetailBottomSheet(context);
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