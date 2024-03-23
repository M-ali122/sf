// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get_core/get_core.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:sf_app/resources/icon/icon.dart';
// import 'package:sf_app/resources/icon/svgs.dart';

// class CommunityScreen extends StatelessWidget {
//   static String route = 'CommunityScreen';  
//    CommunityScreen({super.key});
    
//      final theme = Get.theme;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 25,),
//               Row(
//                 children: [
//                   Image.asset('assets/s_f_logo.png'),
//                   const SizedBox(width: 15,),
//                   Text(
//                     'Community',
//                     style: theme.textTheme.headline1,
//                     ),
//                     const Spacer(),
//                   SvgPicture.string(Appicons.searchBorder)   
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/community/view/community_card_design.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class CommunityTabs extends StatefulWidget {
  static String route = 'CommunityTabs';

  const CommunityTabs({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _CommunityTabsState createState() => _CommunityTabsState();
}

class _CommunityTabsState extends State<CommunityTabs>
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
                  Image.asset('assets/s_f_logo.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Community',
                    style: theme.textTheme.displayLarge,
                  ),
                  const Spacer(),
                 SvgPicture.string(Appicons.searchBorder)
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
                      text: 'Trending',
                    ),
                    Tab(
                      text: 'Following',
                    ),
                    Tab(
                      text: 'Events',
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
                    // Text('data'),
                    CardDesign(),
                    // second tab bar view widget
                    Center(child: Text('dare')),
                    Center(
                      child: Text('demo'),
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
