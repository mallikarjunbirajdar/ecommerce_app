import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:flutter/cupertino.dart';

class UCricularContainer extends StatelessWidget {
  const UCricularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width:USizes.homePrimaryHeaderHeight,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: UColors.white.withOpacity(0.10),
      ),
    );
  }
}
