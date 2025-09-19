import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              isDark
                  ? 'assets/logo/t-store-splash-logo-whitepng'
                  : 'assets/logo/t-store-splash-logo-black.png',
            ),
            height: 150,
          ),

          Text(
            TTexts.tLoginTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: TSizes.sm),
          Text(
            TTexts.tLoginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
