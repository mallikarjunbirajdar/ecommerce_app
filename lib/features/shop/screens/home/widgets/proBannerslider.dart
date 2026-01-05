
import 'package:carousel_slider/carousel_slider.dart';

import 'package:e_commerce_app_2/features/shop/controller/home/home_controller.dart';

import 'package:e_commerce_app_2/utilis/constants/images.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final HomeController controller =Get.put(HomeController());
    return Column(
      children: [
      //   CarouselSlider(
      //     items: banners.map((banner)=> URoundedImageBanner(imageUrl: banner)).toList(),
       
      //    options: CarouselOptions(
      //     viewportFraction: 1.0,
       
          
      //     ),
      // //  carouselController: controller.carouselController;
      //   ),
        SizedBox(height: USizes.spaceBtwItems),
       // BannersDot_indicatorNavigation()
      ],
    );
  }
}















