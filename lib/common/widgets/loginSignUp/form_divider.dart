import 'package:e_commerce_app_2/utilis/constants/colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ULoginDivider extends StatelessWidget {
   ULoginDivider({
    super.key,
   // required this.dark,
    required this.title,
  });

  //final bool dark;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          indent: 15,
          endIndent: 10,
          color:  UColors.grey,


         // color: dark ? UColors.darkGrey : UColors.grey,
        )),
        Text(
      title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Expanded(
            child: Divider(
          indent: 15,
          endIndent: 10,
        )),
      ],
    );
  }
}

