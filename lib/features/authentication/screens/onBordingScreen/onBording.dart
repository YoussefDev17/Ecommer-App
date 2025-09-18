import 'package:flutter/material.dart';
//import 'package:e_commerce_customer_app_new/utils/Theme/theme.dart';
import 'Widgets/onBordingPage.dart';
import 'package:e_commerce_customer_app_new/features/authentication/models/onBoardingModel.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import 'package:e_commerce_customer_app_new/features/authentication/screens/onBordingScreen/Widgets/onBording_SkipButton.dart';
import 'package:e_commerce_customer_app_new/features/authentication/screens/onBordingScreen/Widgets/onBording_NextButton.dart';
import 'package:e_commerce_customer_app_new/features/authentication/screens/onBordingScreen/Widgets/onBording_dotNavigation.dart';
import 'package:e_commerce_customer_app_new/features/authentication/Controllers/onBording/onBoardingController.dart';
import 'package:get/get.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final _controller = PageController();
    final controller = Get.put((Onboardingcontroller()));
    return Scaffold(
      //backgroundColor: TAppTheme.lightTheme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          const OnBording_SkipButton(),
          PageView(
            //controller: _controller,
            controller: controller.pageController,
            onPageChanged: controller.UpdatePageIndicator,
            children: [
              onBoardinPage(
                model: Onboardingmodel(
                  image: TImages.tOnBoardingImage1,
                  title: TTexts.tOnBoardingTitle1,
                  subTitle: TTexts.tOnBoardingSubTitle1,
                ),
              ),
              onBoardinPage(
                model: Onboardingmodel(
                  image: TImages.tOnBoardingImage2,
                  title: TTexts.tOnBoardingTitle2,
                  subTitle: TTexts.tOnBoardingSubTitle2,
                ),
              ),
              onBoardinPage(
                model: Onboardingmodel(
                  image: TImages.tOnBoardingImage3,
                  title: TTexts.tOnBoardingTitle3,
                  subTitle: TTexts.tOnBoardingSubTitle3,
                ),
              ),
            ],
          ),

          const onBording_dotNavigation(),

          const onBording_NextButton(),
        ],
      ),
    );
  }
}
