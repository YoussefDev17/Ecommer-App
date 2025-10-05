import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TgridLayout extends StatelessWidget {
  const TgridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisAlignment = 280,
    required this.itemBuilder,
  });

  final int itemCount;
  final double mainAxisAlignment;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // important!
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 columns
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: mainAxisAlignment,
        //childAspectRatio: 1.0, // Square items
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
