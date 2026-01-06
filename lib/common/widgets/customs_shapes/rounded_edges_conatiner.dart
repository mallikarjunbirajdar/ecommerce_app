import 'package:e_commerce_app_2/common/widgets/customs_shapes/clipper/custom_rounded_cricle.dart';
import 'package:flutter/cupertino.dart';

class  URoundedEdgesContainer extends StatelessWidget {
  const URoundedEdgesContainer({super.key, required this.child});


  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      
      
      clipper: UCustomeRoundedEdges(
        
      ),
      child: child,



    );
}
}