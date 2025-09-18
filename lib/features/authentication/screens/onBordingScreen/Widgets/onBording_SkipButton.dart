import 'package:e_commerce_customer_app_new/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/features/authentication/Controllers/onBording/onBoardingController.dart';

class OnBording_SkipButton extends StatelessWidget {
  const OnBording_SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => Onboardingcontroller.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
