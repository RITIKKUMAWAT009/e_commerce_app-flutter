import 'package:flutter/material.dart';

import '../curved_edges/custom_curved_edges.dart';
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