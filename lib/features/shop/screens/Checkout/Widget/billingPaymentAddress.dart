import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TbillingAddressSection extends StatelessWidget {
  const TbillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TsectionHeading(
          title: 'Shipping Address',
          showActionButton: true,
          buttonTitle: 'Change',
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Text('Coding With Youssef'),
        SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.phone),
            SizedBox(width: TSizes.spaceBtwItems / 2),
            Expanded(
              child: Text(
                '+212 612345678',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.location_on_outlined),
            SizedBox(width: TSizes.spaceBtwItems / 2),
            Expanded(
              child: Text(
                '123 Street, City, Country',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
