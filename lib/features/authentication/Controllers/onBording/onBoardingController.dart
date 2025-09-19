import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce_customer_app_new/features/authentication/screens/LoginScreen/login.dart';

class Onboardingcontroller extends GetxController {
  static Onboardingcontroller get instance => Get.find();

  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;
  void UpdatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextButtonClick() {
    if (currentPageIndex.value == 2) {
      Get.to(Login());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2); // FIX
  }
}
