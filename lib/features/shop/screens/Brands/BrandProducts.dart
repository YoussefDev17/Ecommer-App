import 'package:e_commerce_customer_app_new/common/widgets/Brands/BrandCard.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/Sortable/SortableProduct.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandproductsScreen extends StatelessWidget {
  const BrandproductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(title: Text('Brand Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TbrandCard(showBorder: true),

              SizedBox(height: TSizes.spaceBtwSections),

              TsortibaleProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
