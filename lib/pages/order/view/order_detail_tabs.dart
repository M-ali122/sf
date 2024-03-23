// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:sf_app/resources/icon/icon.dart';

// class OrderDetailScreen extends StatelessWidget {
//   static String route = 'OrderDetailScreen';
//    OrderDetailScreen({super.key});

//     final theme = Get.theme;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 25),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: (){
//                       Get.back();
//                     },
//                     child: SvgPicture.string(Appicons.backIcon),
//                     ),
//                     const SizedBox(width: 20,),
//                   Text(
//                     'Order detail',
//                     style: theme.textTheme.displayLarge,
//                     ),
//                     const Spacer(),
//                   SvgPicture.string(Appicons.moresquareBorder),
//                   const SizedBox(height: 20,),

//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/order/view/message.dart';
import 'package:sf_app/pages/order/view/order_detail.dart';
import 'package:sf_app/pages/order/view/tracking_screen.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class OrderTabbarScreen extends StatefulWidget {
  static String route = 'OrderTabbarScreen';

  const OrderTabbarScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _OrderTabbarScreenState createState() => _OrderTabbarScreenState();
}

class _OrderTabbarScreenState extends State<OrderTabbarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  final theme = Get.theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              // give the tab bar a height [can change hheight to preferred height]
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.string(Appicons.backIcon),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Order detail',
                    style: theme.textTheme.displayLarge,
                  ),
                  const Spacer(),
                  PopupMenuButton<String>(
                    color: AppColor.white,
                    onSelected: (value) {},
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'option1',
                        child: Row(
                          children: [
                            SvgPicture.string(Appicons.arrowdone),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Complete order'),
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'option2',
                        child: Row(
                          children: [
                            SvgPicture.string(Appicons.chatBorder),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Contact deigner'),
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'option3',
                        child: Row(
                          children: [
                            SvgPicture.string(Appicons.cancellOrder),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Cancel order'),
                          ],
                        ),
                      ),
                    ],
                    icon: SvgPicture.string(Appicons.moresquareBorder),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  labelStyle: theme.textTheme.bodyText1,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                      gradient: AppColor.mainGradient),
                  labelColor: Colors.white,
                  // unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Detail',
                    ),
                    Tab(
                      text: 'Tracking',
                    ),
                    Tab(
                      text: 'Message',
                    ),
                  ],
                ),
              ),
              // tab bar view here
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    //  const SizedBox(height: 20,),
                    OrderDetailScreen(),

                    // second tab bar view widget
                    Center(child: TrackingOrder()),
                    Center(
                      child: OrderMessage(),
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
}
