import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/primary_header_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
//import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Rounded_Image.dart';
//import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/common/widgets/list_Tile/setting_menu_Tile.dart';
import 'package:e_commerce_customer_app_new/common/widgets/list_Tile/user_profile_Tile.dart';
import 'package:e_commerce_customer_app_new/features/presonalization/screens/Address/AdressScreen.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Order/OrderScreen.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TprimaryHeaderContainer(
              child: Column(
                children: [
                  TappBar(
                    title: Text(
                      'Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),

                  TuserProfileTile(),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TsectionHeading(title: 'Account Setting'),

                  SizedBox(height: TSizes.spaceBtwItems),

                  TsettingMenuTile(
                    icon: Iconsax.safe_home,
                    Title: 'My Address',
                    SubTitle: 'Set Shopping Delivrey Address',
                    onTap: () => {Get.to(AddressScreen())},
                  ),
                  TsettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    Title: 'My Cart',
                    SubTitle: 'Add, Remove Products And Move To Checkout',
                    onTap: () {},
                  ),
                  TsettingMenuTile(
                    icon: Iconsax.bag_tick,
                    Title: 'My Orders',
                    SubTitle: 'In Progress And Complete Order',
                    onTap: () {
                      Get.to(orderScreen());
                    },
                  ),
                  TsettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    Title: 'Bank Account',
                    SubTitle: 'Withdraw Balance To Regester Bank Account',
                    onTap: () {},
                  ),
                  TsettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    Title: 'My Coupons',
                    SubTitle: 'List Of all the discounted coupons',
                    onTap: () {},
                  ),
                  TsettingMenuTile(
                    icon: Iconsax.notification,
                    Title: 'Notifications',
                    SubTitle: 'Set Any Kind of Notification message',
                    onTap: () {},
                  ),
                  TsettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    Title: 'Account Privacy',
                    SubTitle: 'Manage Data Usage and connected Account',
                    onTap: () {},
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),

                  TsectionHeading(title: 'App Setting'),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TsettingMenuTile(
                    icon: Iconsax.document_upload,
                    Title: 'Load Data',
                    SubTitle: 'Upload Data To Your Cloud ',
                    onTap: () {},
                  ),
                  TsettingMenuTile(
                    icon: Iconsax.location,
                    Title: 'Geolocation',
                    SubTitle: 'Set Recommendation based on Location',
                    onTap: () {},
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: TColors.primary,
                    ),
                  ),
                  TsettingMenuTile(
                    icon: Iconsax.security_user,
                    Title: 'Safe Mode ',
                    SubTitle: 'Search Result is Safe For All Ages',
                    onTap: () {},
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: TColors.primary,
                    ),
                  ),
                  TsettingMenuTile(
                    icon: Iconsax.image,
                    Title: 'HD Image Quality',
                    SubTitle: 'Set Image Quality to be seen',
                    onTap: () {},
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: TColors.primary,
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Layout'),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections * 2.5),

                  //MenuItem(),
                  //MenuItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
