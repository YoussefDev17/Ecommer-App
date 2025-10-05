import 'package:e_commerce_customer_app_new/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
//import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
//import 'package:get/get.dart';
//import 'package:e_commerce_customer_app_new/features/authentication/screens/LoginScreen/Login.dart';

class SuccessScreen extends StatelessWidget {
  final String ImageString;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;
  const SuccessScreen({
    super.key,
    required this.ImageString,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(ImageString),

                width: THelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              //Title And Subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // button Continue
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  /* () {
                    Get.offAll(() => const Login());
                  }, */
                  child: const Text(TTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
