import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/resources/color/app_color.dart';

class OrderDetailScreen extends StatelessWidget {
    static String route = 'OrderDetailScreen';
   OrderDetailScreen({super.key});
    
    final theme = Get.theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30,),
          Container(
                  height: 170,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColor.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        offset: const Offset(0, 0),
                        spreadRadius: 1,
                        color: Colors.grey.withOpacity(0.1)
                      ),
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
                                Text('100.00 SAR',
                                style: theme.textTheme.bodyLarge,
                                ),
                              
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
    );
  }
}
