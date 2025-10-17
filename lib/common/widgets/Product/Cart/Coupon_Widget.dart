import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TcouponCode extends StatelessWidget {
  const TcouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      width: double.infinity,
      padding: const EdgeInsets.all(TSizes.sm),
      showBorder: true,
      borderColor: TColors.borderLight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                labelText: 'Enter Promo Code',
              ),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwItems),
          ElevatedButton(onPressed: () {}, child: Text('Apply')),
        ],
      ),
    );
  }
}
