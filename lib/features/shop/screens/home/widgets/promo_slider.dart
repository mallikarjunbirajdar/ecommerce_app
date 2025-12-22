import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/banners_dot_navigation.dart';
import 'package:e_commerce_app_2/utilis/constants/images.dart';
import 'package:flutter/cupertino.dart';

class Upromoslider extends StatelessWidget {
  const Upromoslider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: banners
                .map((banner) => Image(image: AssetImage(banner)))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
            )),
        bannersDotNavigation()
      ],
    );
  }
}
