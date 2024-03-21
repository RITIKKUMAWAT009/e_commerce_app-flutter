
import 'package:flutter/material.dart';
import 'package:e_commerce_app/common/widgets/custom_shape/container/cured_edge_container_widget.dart';

import '../../../../../common/widgets/custom_shape/container/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({this.child,super.key});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150,
                  right: -250,
                  child: CircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.2),)),
              Positioned(top: 100,
                  right: -300,
                  child: CircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.2),)),
              child!
            ],
          ),
        ),
      ),
    );
  }
}
