import 'package:e_commerce_customer_app_new/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TproductQuantityAddAndRemove extends StatelessWidget {
  const TproductQuantityAddAndRemove({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TCircularIcon(
          backgroundColor: TColors.lightGrey,
          width: 30,
          height: 30,
          size: TSizes.md,

          icon: Iconsax.minus,
          onPressed: () {},
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Text('1', style: TextTheme.of(context).titleSmall),
        SizedBox(width: TSizes.spaceBtwItems),
        TCircularIcon(
          backgroundColor: TColors.primary,
          width: 30,
          height: 30,
          size: TSizes.md,
          color: TColors.white,

          icon: Iconsax.add,
          onPressed: () {},
        ),
      ],
    );
  }
}
