import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';
import 'package:flutter/material.dart';

class ULoginHeader extends StatelessWidget {
  const ULoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          UTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(
          height: USizes.sm,
        ),
        Text(UTexts.loginSubTitle, style: Theme.of(context).textTheme.bodySmall)
      ],
    );
  }
}
