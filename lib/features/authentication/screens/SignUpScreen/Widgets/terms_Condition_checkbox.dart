import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';

class TermsConditionCheckbox extends StatelessWidget {
  const TermsConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.IagreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.tPrivacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.white : TColors.primary,
                ),
              ),

              TextSpan(
                text: ' ${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),

              TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? TColors.white : TColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
