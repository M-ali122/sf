import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/community/view/community_card_design.dart';
import 'package:sf_app/client_side_design/community/view/event_screen.dart';
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
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
             SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.0.w),
                  child: Image.asset('assets/s_f_logo.png'),
                ),
                 SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Community',
                  style: theme.textTheme.displayLarge,
                ),
                 SizedBox(
                  width: 130.w,
                ),
               Padding(
                 padding:  EdgeInsets.only(left: 24.0.w),
                 child: SvgPicture.string(Appicons.searchBorder),
               )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Container(
                height: 52.h,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 243, 243, 1),
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  labelStyle: theme.textTheme.bodyLarge,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(114, 151, 94, 1),
                          Color.fromRGBO(71, 87, 54, 1),
                        ]
                        )
                      ),
                  labelColor: Colors.white,
                  // unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: theme.textTheme.bodyLarge,
                  
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
                  Center(
                    child: Text('demo'),
                  ),
                  EventScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
