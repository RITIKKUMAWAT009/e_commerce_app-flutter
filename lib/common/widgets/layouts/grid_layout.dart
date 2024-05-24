import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RGridLayout extends StatelessWidget {
  const RGridLayout({super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder});

  final int itemCount;
  final double mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: TSize.gridViewSpacing,crossAxisSpacing: TSize.gridViewSpacing,
            mainAxisExtent: mainAxisExtent)
        , itemBuilder: itemBuilder
    );
  }
}