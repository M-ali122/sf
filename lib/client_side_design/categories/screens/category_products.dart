import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/product_bottom_sheet_tabs.dart';
import 'package:sf_app/client_side_design/categories/models/category_model.dart';
import 'package:sf_app/client_side_design/products/screens/product_details.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class CategoryProducts extends StatefulWidget {
  static String route = '/category-product';
  const CategoryProducts({Key? key}) : super(key: key);

  @override
  _CategoryProductsState createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
  late CategoryModel category;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    final dynamic arguments = Get.arguments;
    category = arguments ?? CategoryModel();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          shrinkWrap: true,
          children: [
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
                  category.category ?? 'Category Name',
                  style: theme.textTheme.headline4,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(
              height: 20,
            ),
            Container(
              width: Get.width,
              height: 42.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  ProductBottomShetFilterTabs(
                    titleOne: 'Shirt',
                    titleTwo: 'Pants',
                    titleThree: 'Dress',
                    titleFour: 'Jacket',
                    tabWidth: 82.w,
                    onIndexChanged: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            if (selectedIndex == 0)
              GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 324,
                  childAspectRatio: 178,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(ProductDetails());
                    },
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 178,
                              height: 143,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/ariveldesigin.png"),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15.0, left: 15),
                                child: Text(
                                  'Green Polo',
                                  style: theme.textTheme.button,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: SvgPicture.string(Svgs.arivelRow),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0, top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 12,
                                    width: 12,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFFCD90),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 12,
                                    width: 12,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.red,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 12,
                                    width: 12,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff313131),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.add_circle_outline,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Text('100 SAR'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            else
              Center(
                child: Text('No ${selectedIndex == 1 ? 'Pants' : selectedIndex == 2 ? 'Dress' : 'Jacket'} data found'),
              ),
          ],
        ),
      ),
    );
  }
}
