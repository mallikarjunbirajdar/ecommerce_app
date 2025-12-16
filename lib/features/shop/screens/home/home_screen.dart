import 'package:e_commerce_app_2/common/widgets/textfields/search_bar.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/primary_header.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/uHomeAppbar.dart';
import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

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
        body: Stack(children: [
      SizedBox(
        height: USizes.homePrimaryHeaderHeight+10,
       
      ),
      UPrimaryHeaderContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        UHomeAppBar(),
        SizedBox(height: USizes.spaceBtwSections),
        Text("Popular Categories",style: Theme.of(context).textTheme.headlineSmall!.apply(
          color: UColors.white
        )),

        CircleAvatar(
          radius: 30,
        )
      ])),
      USearchBar()
    ]));
  }
}

