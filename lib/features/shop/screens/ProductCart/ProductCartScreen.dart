import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Checkout/ChekoutScreen.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductCart/Widget/CartItems.dart';

import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Productcartscreen extends StatelessWidget {
  const Productcartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(
        showBackArrow: true,
        title: Text('Cart', style: TextTheme.of(context).headlineMedium),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(const ChekoutScreen());
          },

          child: Text(
            'Proceed to Checkout',
            style: TextTheme.of(context).titleLarge?.apply(color: Colors.white),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: TcartItems(ShowAddRemoveButton: true),
      ),
    );
  }
}
