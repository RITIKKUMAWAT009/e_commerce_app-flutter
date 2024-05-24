
import 'package:e_commerce_app/common/widgets/custom_shape/container/cured_edge_container_widget.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shape/container/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({this.child,super.key, });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return CurvedEdgesWidget(
      child: Container(
        color: dark? TColors.primary:TColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(top: -150,
                right: -250,
                child: CircularContainer(inDarkModeBackgroundColor: Colors.white.withOpacity(0.2),
                  backgroundColor: TColors.textWhite.withOpacity(0.2),)),
            Positioned(top: 100,
                right: -300,
                child: CircularContainer(inDarkModeBackgroundColor: Colors.white.withOpacity(0.2),
                  backgroundColor: TColors.textWhite.withOpacity(0.2),)),
            child!
          ],
        ),
      ),
    );
  }
}
