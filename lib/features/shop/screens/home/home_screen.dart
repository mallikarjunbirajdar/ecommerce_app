import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app_2/common/widgets/textfields/search_bar.dart';
import 'package:e_commerce_app_2/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app_2/features/shop/controller/home/home_controller.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/banners_dot_navigation.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/primary_header.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/uHomeAppbar.dart';
import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/constants/images.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    // this.height = 400,
    // this.width = 400,
    // this.redius = 400,
    // this.backgroundColor = UColors.white,
    // this.padding,
    // this.margin
  });

  // final double height;
  // final double width;
  // final double redius;
  // final Color backgroundColor;
  // final EdgeInsetsGeometry? padding;
  // final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            SizedBox(
              height: USizes.homePrimaryHeaderHeight + 10,
            ),
            UPrimaryHeaderContainer(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  UHomeAppBar(),
                  SizedBox(height: USizes.spaceBtwSections),
                  UHomeCategories()
                ])),
            USearchBar()
          ]),
          SizedBox(height: USizes.defaultSpace),
          Padding(
            padding: const EdgeInsets.all(USizes.defaultSpace),
            child: Column(
              children: [
                Upromoslider(banners: [
                  UImages.homeBanner1,
                  UImages.homeBanner2,
                  UImages.homeBanner3,
                  UImages.homeBanner4,
                  UImages.homeBanner5
                ]),
                SizedBox(height: USizes.spaceBtwSections),
                Usectionheading(title: 'Popular Products', onPressed: () {}),
                SizedBox(height: USizes.spaceBtwItems),
                Container(
                  width: 145,
                  height: 212,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: UColors.darkGrey.withValues(alpha: 0.1),
                          blurRadius: 50,
                          spreadRadius: 7,
                          offset: Offset(0, 2)),
                    ],
                    borderRadius:
                        BorderRadius.circular(USizes.productImageRadius),
                    color: const Color.fromARGB(255, 149, 197, 245),
                  ),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 125,
                        width: 135,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(USizes.productImageRadius),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 5,
                              top: 5,

                              child: Image(
                                image: AssetImage(UImages.productImages25),
                                height: 84,
                                width: 82,
                              ),
                            ),
                          Positioned(
                            left: 100,
                            child: Image(image: AssetImage(UImages.heart))),
                          Image(image: AssetImage(UImages.productGroup27))
                          ],
                        ),
                      ),
                      SizedBox(height: 9),
                      Text("Blue INDURE Shoes"),
                       Text("INDURE"),
                        Text("${199}")


                      

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
