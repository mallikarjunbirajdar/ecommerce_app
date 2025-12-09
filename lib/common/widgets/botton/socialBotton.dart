import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/constants/images.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class USocialButtons extends StatelessWidget {
  const USocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildBotton(UImages.googleIcon, () {}),
        SizedBox(width: USizes.spaceBtwItems),
        buildBotton(UImages.facebookIcon, () {}),
      ],
    );
  }

  Container buildBotton(String image, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: UColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: () {},
          icon: Image.asset(
          image,
            height: USizes.iconMd,
            width: USizes.iconMd,
          )),
    );
  }
}
