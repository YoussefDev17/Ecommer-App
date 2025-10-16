import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/features/presonalization/screens/Address/AddNewAddressScreen.dart';
import 'package:e_commerce_customer_app_new/features/presonalization/screens/Address/Widgets/SingleAddress.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(
        showBackArrow: true,
        title: Text('Address', style: TextTheme.of(context).headlineMedium),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => {Get.to(Addnewaddressscreen())},
        child: Icon(Iconsax.add, color: TColors.white),
      ),

      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TsingleAddress(IsSelectedAddress: false),
            SizedBox(height: TSizes.spaceBtwItems),
            TsingleAddress(IsSelectedAddress: true),
          ],
        ),
      ),
    );
  }
}
