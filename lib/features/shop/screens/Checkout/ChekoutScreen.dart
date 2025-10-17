import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/Cart/Coupon_Widget.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Success_Screen/Success.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Checkout/Widget/billingPaymentAddress.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Checkout/Widget/billingPaymentSection.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Checkout/Widget/billing_Payment_Section.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Navigation_Menu.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductCart/Widget/CartItems.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChekoutScreen extends StatelessWidget {
  const ChekoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(
        showBackArrow: true,
        title: Text('Checkout', style: TextTheme.of(context).headlineMedium),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              SuccessScreen(
                ImageString: TImages.tSuccessImage,
                title: 'Payment Successful',
                subTitle: 'Your payment has been processed successfully.',
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              ),
            );
          },
          child: Text(
            'Proceed to Checkout',
            style: TextTheme.of(context).titleLarge?.apply(color: Colors.white),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TcartItems(ShowAddRemoveButton: false),
              //SizedBox(height: TSizes.spaceBtwSections),
              TcouponCode(),

              SizedBox(height: TSizes.spaceBtwInputFields),

              TRoundedContainer(
                width: double.infinity,
                showBorder: true,
                borderColor: TColors.borderLight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TbillingAndPaymentSection(),
                    Divider(),
                    TbillingPaymentSection(),
                    TbillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
