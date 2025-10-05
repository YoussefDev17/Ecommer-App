//import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //final HomeController carouselController = HomeController();
  static HomeController get instance => Get.find();

  final CarouselIndex = 0.obs;

  void onPageChanged(int index) {
    CarouselIndex.value = index;
  }
}
