import 'package:e_commerce_app_2/common/widgets/customs_shapes/circular_container.dart';
import 'package:e_commerce_app_2/common/widgets/customs_shapes/clipper/custom_rounded_cricle.dart';
import 'package:e_commerce_app_2/common/widgets/customs_shapes/rounded_edges_conatiner.dart';
import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/helpers/devices_helpers.dart';
import 'package:flutter/cupertino.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        height: UDeviceHelper.getScreenHeight(context) * 0.4,
        color: UColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -120,
              right: -120,
              child: UCricularContainer(),
            ),
            Positioned(
              top: 50,
              right: -200,
              child: UCricularContainer(),
            ),
            child
          ],
        ),
      ),
    );
  }
}

