//import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce_customer_app_new/features/shop/Controllers/Navigation_Controller.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller = Get.put(NavigationController());
    final IsDarkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 60,
          elevation: 0,
          selectedIndex: Controller.currentIndex.value,
          backgroundColor: IsDarkMode ? TColors.black : TColors.white,
          indicatorColor:
              IsDarkMode
                  ? TColors.white.withOpacity(0.2)
                  : TColors.black.withOpacity(0.2),
          onDestinationSelected: (int index) {
            Controller.changeIndex(index);
          },

          // backgroundColor: Colors.transparent,
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: TTexts.homeBottomBar,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop),
              label: TTexts.storeBottomBar,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: TTexts.wishList,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: TTexts.profileBottomBar,
            ),
          ],
          //selectedItemColor: Colors.amber[800],
        ),
      ),

      body: Obx(() => Controller.currentScreen),
    );
  }
}
