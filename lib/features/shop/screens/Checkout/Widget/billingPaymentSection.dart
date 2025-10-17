import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TbillingPaymentSection extends StatelessWidget {
  const TbillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TsectionHeading(
          title: 'Payment Method',
          showActionButton: true,
          buttonTitle: 'Change',
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 40,
              padding: const EdgeInsets.all(TSizes.sm),

              child: Image(
                image: AssetImage(TImages.paypal),
                fit: BoxFit.contain,
              ),
            ),

            //SizedBox(width: TSizes.spaceBtwItems),
            Text('Paypal'),
          ],
        ),
      ],
    );
  }
}
