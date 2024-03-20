import 'package:e_commerce_app/common/widgets/custom_shape/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shape/curved_edges/custom_curved_edges.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgesWidget(
              child: Container(
                color: TColors.primary,
                padding:const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(top:-150,right: -250 ,child: CircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.2),)),
                      Positioned(top: 100,right: -300,child: CircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.2),)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({
    this.child,
    super.key,
  });
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurveEdges(),
      child: child,
    );
  }
}

