import 'package:e_commerce_app_2/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app_2/common/widgets/product/cart/cart_counter_icon.dart';
import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(UTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: UColors.grey)),
          Text(UTexts.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: UColors.grey))
        ],
      ),
      actions: [UCardCounterIcon()],
    );
  }
}

