import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/Cart/card_menu_Icon.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductCart/ProductCartScreen.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Thomeappbar extends StatelessWidget {
  const Thomeappbar({super.key});
  @override
  Widget build(BuildContext context) {
    return TappBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: TColors.white),
          ),
        ],
      ),

      actions: [
        TcardIcounCounter(
          OnPressed: () {
            // Navigate to the cart screen
            Get.to(Productcartscreen());
          },
          iconColor: TColors.white,
        ),

        /* Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.shopping_bag, color: Colors.white),
            ),

            TcardCounterIcon(onPressed: () {}, iconColor: TColors.white),
          ],
        ), */
      ],
    );
  }
}
