import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/categories/db/statuc_data.dart';
import 'package:sf_app/pages/categories/views/category_card_view.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../categories/screens/category_products.dart';

class SeeAll extends StatelessWidget {
  SeeAll({super.key});

  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  SvgPicture.string(Appicons.backIcon),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Top Categories',
                    style: theme.textTheme.displayLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: Get.width,
                height: 400.h,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: (Get.height / Get.width),
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        // //
                        // Get.to(() => CategoryProducts.route,
                        //     arguments:
                        //         CategoriesStaticData().categories[index]);
                      },
                      child: CategoryCardView(
                        category: CategoriesStaticData().categories[index],
                      ),
                    );
                  },
                  itemCount: CategoriesStaticData().categories.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
