import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class bannersDotNavigation extends StatelessWidget {
  const bannersDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: PageController(),
      count: 5,
      effect: WormEffect(),
    );
  }
}
