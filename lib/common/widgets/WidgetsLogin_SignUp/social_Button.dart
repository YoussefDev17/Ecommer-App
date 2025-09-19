import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';

class TsocialButton extends StatelessWidget {
  const TsocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              // Handle phone icon press
            },
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.tGoogleLogo),
            ),
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              // Handle phone icon press
            },
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.tFacebookLogo),
            ),
          ),
        ),
      ],
    );
  }
}
