import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/Circular_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Curved_Edges/Curved_Edge_Widget.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';

class TprimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const TprimaryHeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return TcurveEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: 320,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,

                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,

              //Align(alignment: Alignment.center, child: child),
              // child,
            ],
          ),
        ),
      ),
    );
  }
}
