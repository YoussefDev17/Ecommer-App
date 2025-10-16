import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ToverallProductRating extends StatelessWidget {
  const ToverallProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('4.8', style: Theme.of(context).textTheme.displayLarge),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressBar(rating: '1', value: 0.7),
              TRatingProgressBar(rating: '2', value: 0.5),
              TRatingProgressBar(rating: '3', value: 0.4),
              TRatingProgressBar(rating: '4', value: 0.6),
              TRatingProgressBar(rating: '5', value: 0.1),

              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}

class TRatingProgressBar extends StatelessWidget {
  final String rating;
  final double value;

  const TRatingProgressBar({
    super.key,
    required this.rating,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(rating, style: Theme.of(context).textTheme.bodyMedium),

        const SizedBox(width: 8),
        Expanded(
          flex: 1,
          child: LinearProgressIndicator(
            value: value, //0.8, // 80% filled
            color: TColors.buttonPrimary,
            backgroundColor: Colors.grey[300],
            minHeight: 8,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        /* const SizedBox(width: 8),
                const Text('80%'), */
      ],
    );
  }
}
