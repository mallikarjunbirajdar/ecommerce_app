import 'package:e_commerce_app_2/common/widgets/customs_shapes/circular_container.dart';
import 'package:e_commerce_app_2/features/shop/screens/home/widgets/primary_header.dart';
import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/helpers/devices_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {super.key,
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
      body: UPrimaryHeaderContainer(
       child: Container()
      ),
    );
  }
}
