import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Curved_Edges/Curved_Edge.dart';
import 'package:flutter/material.dart';

class TcurveEdgeWidget extends StatelessWidget {
  const TcurveEdgeWidget({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
