import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Rounded_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/Review/RatingBarIndicator.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TroundedImage(ImgUrl: TImages.user, width: 40, height: 40),
            SizedBox(width: TSizes.spaceBtwItems / 2),
            Text('Youssef Ghazouan'),
            Spacer(),
            IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            TratingBarIndicator(Rating: 4, itemSize: 13),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('12-04-2025', style: TextTheme.of(context).bodyMedium),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          'i will be a millionaire and billionaire Inchallah i will be a millionaire and billionaire Inchallah',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show Less',
          trimCollapsedText: 'show More',
          moreStyle: TextStyle(fontSize: 14, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, color: TColors.primary),
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        //Company Review
        TRoundedContainer(
          backgroundColor: isDark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "T'Store",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    '02 - Nov',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              ReadMoreText(
                'i will be a millionaire and billionaire Inchallah i will be a millionaire and billionaire Inchallah',
                trimLines: 1,
                trimMode: TrimMode.Line,
                trimExpandedText: 'Show Less',
                trimCollapsedText: 'show More',
                moreStyle: TextStyle(fontSize: 14, color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14, color: TColors.primary),
              ),
            ],
          ),
        ),

        SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}
