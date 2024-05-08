import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/categories/db/statuc_data.dart';
import 'package:sf_app/client_side_design/categories/screens/category_products.dart';
import 'package:sf_app/client_side_design/categories/views/category_card_view.dart';
import 'package:sf_app/client_side_design/see_all_pages/see_all.dart';
import 'package:sf_app/resources/icon/icon.dart';

class TopCategoriesView extends StatelessWidget {
  const TopCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.0.w),
          child: GestureDetector(
            onTap: () {
            Get.to(SeeAll());
          },
            child: Row(
              children: [
                Text(
                  'Top Categories',
                  style: Get.theme.textTheme.titleLarge,
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
          height: 335.h,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
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
