import 'package:e_commerce_app_2/common/widgets/image_text/vertical_image_text.dart';
import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/constants/images.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UHomeCategories extends StatelessWidget {
  const UHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: USizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(UTexts.popularCategories,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: UColors.white)),
          SizedBox(height: USizes.spaceBtwItems / 2),
          SizedBox(
            height: 80,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      width: USizes.spaceBtwItems,
                    ),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return UVerticalImagesText(
                      title: " Sport Categories",
                      image: UImages.sportsIcon,
                      textColor: UColors.white);
                }),
          )
        ],
      ),
    );
  }
}
