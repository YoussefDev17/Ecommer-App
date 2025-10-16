import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TraitingShareWidget extends StatelessWidget {
  const TraitingShareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 23),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '5.0',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(text: '(1999)'),
                ],
              ),
            ),
          ],
        ),

        IconButton(
          onPressed: () => {},
          icon: Icon(Iconsax.Share, size: TSizes.iconMd),
        ),
      ],
    );
  }
}
