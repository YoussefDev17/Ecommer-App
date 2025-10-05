import 'package:e_commerce_customer_app_new/common/styles/spacing_styles.dart';
import 'package:e_commerce_customer_app_new/features/authentication/screens/Password_Configiration/Reset_Password.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: TSpacingStyle.paddingWithDefaultWidth,
        child: Column(
          children: [
            Text(
              TTexts.tForgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.tEmail,
                prefixIcon: const Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwSections),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const ResetPasswordScreen());
                },
                child: const Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
