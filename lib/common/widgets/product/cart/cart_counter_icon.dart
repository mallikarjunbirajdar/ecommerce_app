import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class UCardCounterIcon extends StatelessWidget {
  const UCardCounterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.shopping_bag,
              color: UColors.light,
            )),
        Positioned(
          right: 5,
          top: 5,
          child: Container(
            height: 18,
            width: 18,
            decoration:
                BoxDecoration(color: UColors.dark, shape: BoxShape.circle),
            child: Center(
                child: Text("2",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(fontSizeFactor: 0.8, color: UColors.light))),
          ),
        ),
      ],
    );
  }
}
