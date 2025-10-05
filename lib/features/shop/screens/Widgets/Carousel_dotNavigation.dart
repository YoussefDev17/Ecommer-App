import 'package:e_commerce_customer_app_new/features/authentication/Controllers/onBording/onBoardingController.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBording_dotNavigation extends StatelessWidget {
  const onBording_dotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Onboardingcontroller.instance;
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,

        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 4,
          dotWidth: 12,
          activeDotColor: TColors.dark,
          dotColor: Colors.grey,
        ),
      ),
    );
  }
}
