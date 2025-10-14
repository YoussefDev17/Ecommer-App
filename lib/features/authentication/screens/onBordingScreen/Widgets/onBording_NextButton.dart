import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/features/authentication/Controllers/onBording/onBoardingController.dart';

class onBording_NextButton extends StatelessWidget {
  const onBording_NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => Onboardingcontroller.instance.nextButtonClick(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : TColors.black,
        ),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
