import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class TratingBarIndicator extends StatelessWidget {
  const TratingBarIndicator({
    super.key,
    required this.Rating,
    this.itemSize = 19,
  });

  final double Rating;
  final double itemSize;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: Rating,
      itemSize: itemSize,
      unratedColor: TColors.grey,
      itemBuilder:
          (_, __) => const Icon(Iconsax.star1, color: TColors.buttonPrimary),
    );
  }
}
