import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/categories/db/statuc_data.dart';
import 'package:sf_app/pages/categories/screens/category_products.dart';
import 'package:sf_app/pages/categories/views/category_card_view.dart';
import 'package:sf_app/pages/see_all_pages/see_all.dart';
import 'package:sf_app/resources/icon/icon.dart';

class TopCategoriesView extends StatelessWidget {
  const TopCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(SeeAll());
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                Text(
                  'Top Categories',
                  style: Get.theme.textTheme.headline6,
                ),
                const Spacer(),
                SvgPicture.string(Appicons.arrowforword),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          width: Get.width,
          height: 320.h,
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
                  Get.to(() => CategoryProducts(),
                      arguments: CategoriesStaticData().categories[index]);
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
    );
  }
}
