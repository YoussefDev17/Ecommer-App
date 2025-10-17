import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TbillingAndPaymentSection extends StatelessWidget {
  const TbillingAndPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Sub Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$55', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fees',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text('\$5', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fees', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$5', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$5', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
