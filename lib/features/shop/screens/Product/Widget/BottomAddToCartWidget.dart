import 'package:e_commerce_customer_app_new/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TbottomAddToCart extends StatelessWidget {
  const TbottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.defaultSpace,
        vertical: TSizes.defaultSpace,
      ),
      decoration: BoxDecoration(
        color: isDark ? TColors.grey : TColors.lightGrey,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),

      child: Row(
        children: [
          TCircularIcon(
            width: 40,
            height: 40,
            icon: Iconsax.minus,
            backgroundColor: TColors.borderDark,
            color: TColors.white,
          ),
          SizedBox(width: TSizes.spaceBtwItems),
          Text('2', style: Theme.of(context).textTheme.titleSmall),
          SizedBox(width: TSizes.spaceBtwItems),
          TCircularIcon(
            width: 40,
            height: 40,
            icon: Iconsax.cloud_plus,
            backgroundColor: TColors.dark,
            color: TColors.white,
          ),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              side: const BorderSide(color: TColors.black),
            ),
            onPressed: () => {},
            child: Text('Add To Cart'),
          ),
        ],
      ),
    );
  }
}
