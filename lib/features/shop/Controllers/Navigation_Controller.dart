import 'package:e_commerce_customer_app_new/features/shop/screens/Home/Home_Screen.dart';
import 'package:flutter/material.dart';
//import 'package:e_commerce_customer_app_new/features/shop/screens/Home_Screen.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Shop/Shop_Screen.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/WishList/whishList_Screen.dart';
import 'package:e_commerce_customer_app_new/features/presonalization/screens/AccountSettingScreen.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const AccountSettingScreen(),
  ];

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  Widget get currentScreen => screens[currentIndex.value];
}
