import 'package:e_commerce_customer_app_new/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
//import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.clear),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithDefaultWidth,
          child: Column(
            children: [
              Image(
                image: AssetImage(TImages.deliveredEmailIllustration),

                width: THelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              //Title And Subtitle
              Text(
                TTexts.tForgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.tForgetPasswordTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // button Continue
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  /* () {
                    Get.offAll(() => const Login());
                  }, */
                  child: const Text(TTexts.done),
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  /* () {
                    Get.offAll(() => const Login());
                  }, */
                  child: const Text(TTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
