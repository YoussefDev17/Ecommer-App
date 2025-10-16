import 'package:e_commerce_customer_app_new/common/widgets/Product/Review/UserReviewCard.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductReviews/Widgets/OverallProductRating.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/Review/RatingBarIndicator.dart';

import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class RatingAndReviewScreen extends StatelessWidget {
  const RatingAndReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(showBackArrow: true, title: Text('Review And Rating')),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Rating And Verified are from People Who Use This Product'),

              ToverallProductRating(),

              TratingBarIndicator(Rating: 3.5),
              Text(
                '12.456' /* style: Theme.of(context).textTheme.labelSmall */,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
