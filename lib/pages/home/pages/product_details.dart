import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/home/pages/cart_screen.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class ProductDetails extends StatelessWidget {
  static const String route = 'ProductDetails';
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/product.png",
                      ))),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24.0, right: 24, top: 58),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.string(
                                Appicons.backIcon,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              )),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Product details',
                          style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: PopupMenuButton(
                            // padding: EdgeInsets.only(right: 10,top: 20),
                            position: PopupMenuPosition.under,
                            color: AppColor.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),

                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 'option1',
                                child: Row(
                                  children: [
                                    SvgPicture.string(Appicons.sendBorder),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text('Share product'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'option2',
                                child: Row(
                                  children: [
                                    SvgPicture.string(Appicons.paperBorder),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text('Size gide'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: 'option3',
                                child: Row(
                                  children: [
                                    SvgPicture.string(Appicons.chatBorder),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text('Message designer'),
                                  ],
                                ),
                              ),
                            ],
                            onSelected: (value) {
                              // Handle selection
                              print('Selected: $value');
                            },
                            child: SvgPicture.string(
                              Appicons.moresquareBorder,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 380,
                height: 52,
                decoration: BoxDecoration(
                    color: AppColor.backGroundSilver,
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Container(
                      width: 170,
                      height: 52,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(114, 151, 94, 1), // Starting color
                              Color.fromRGBO(71, 87, 54,
                                  1), // Ending color (modify as needed)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: Text(
                        "Information",
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      )),
                    ),
                    Container(
                      width: 170,
                      height: 52,
                      decoration: BoxDecoration(
                          // gradient: LinearGradient(
                          //   colors: [
                          //     Color.fromRGBO(114, 151, 94, 1), // Starting color
                          //     Color.fromRGBO(71, 87, 54, 1),        // Ending color (modify as needed)
                          //   ],
                          // ),

                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                          child: Text(
                        "Reviews",
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color.fromRGBO(33, 33, 33, 1),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 15),
                  child: Text(
                    'Green Polo',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFCD90)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColor.red),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff313131)),
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 15.0),
                //   child: SvgPicture.string(Svgs.arivelRow),
                // ),
                // const SizedBox(
                //   height: 5,
                // ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Description',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: const Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color.fromRGBO(66, 66, 66, 1)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Materiel Details',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: const Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "100% Coton",
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color.fromRGBO(66, 66, 66, 1)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Care Instructions',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: const Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color.fromRGBO(66, 66, 66, 1)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Gallery Photos',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: const Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/ariveldesigin.png")),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 160,
              height: 54,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(243, 243, 243, 1),
                  // gradient: const LinearGradient(
                  //   colors: [
                  //     Color.fromRGBO(114, 151, 94, 1), // Starting color
                  //     Color.fromRGBO(71, 87, 54,
                  //         1), // Ending color (modify as needed)
                  //   ],
                  // ),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                  child: Text(
                "Buy Now",
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              )),
            ),
            GestureDetector(
              onTap: (){
                Get.to(CartScreen());
              },
              child: Container(
                width: 160,
                height: 54,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(114, 151, 94, 1), // Starting color
                        Color.fromRGBO(
                            71, 87, 54, 1), // Ending color (modify as needed)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                  "Add to Cart",
                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
