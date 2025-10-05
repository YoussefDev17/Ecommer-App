import 'package:e_commerce_customer_app_new/features/shop/screens/Home/Home_Screen.dart';
import 'package:flutter/material.dart';
//import 'package:e_commerce_customer_app_new/features/shop/screens/Home_Screen.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Shop_Screen.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/whishList_Screen.dart';
import 'package:e_commerce_customer_app_new/features/presonalization/screens/User_Screen.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const ShopScreen(),
    const WishListScreen(),
    const UserScreen(),
  ];

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  Widget get currentScreen => screens[currentIndex.value];
}
