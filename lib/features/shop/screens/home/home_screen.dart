import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app_2/common/widgets/textfields/search_bar.dart';
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
    return Scaffold(
        body: Column(
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
          child: Upromoslider(banners: [
            UImages.homeBanner1,
            UImages.homeBanner2,
            UImages.homeBanner3,
            UImages.homeBanner4,
            UImages.homeBanner5
          ]),
        )
      ],
    ));
  }
}
