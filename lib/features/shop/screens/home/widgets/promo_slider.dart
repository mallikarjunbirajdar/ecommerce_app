import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app_2/features/shop/controller/home/home_controller.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/banners_dot_navigation.dart';
import 'package:e_commerce_app_2/utilis/constants/images.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:flutter/cupertino.dart';

class Upromoslider extends StatelessWidget {
  const Upromoslider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller =HomeController.instance;

    return Column(
      children: [
        CarouselSlider(
            items: banners
                .map((banner) => Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(USizes.productImageRadius)
                ),
                  
                  
                  
                  child: Image(image: AssetImage(banner))))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index,reason)=>controller.onPageChanged(index)
              
            ),
            carouselController:controller.CarouselController
            
            ),
            SizedBox(height: 20,),
            
        bannersDotNavigation()
      ],
    );
  }
}
