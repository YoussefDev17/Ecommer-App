import 'package:e_commerce_customer_app_new/common/widgets/Brands/BrandCard.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Layouts/grid_Layout.dart';

import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Brands/BrandProducts.dart';

import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Allbrandsscreen extends StatelessWidget {
  const Allbrandsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(title: Text('Brands'), showBackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TsectionHeading(title: 'Brands'),

              SizedBox(height: TSizes.spaceBtwSections),

              TgridLayout(
                itemCount: 6,
                mainAxisAlignment: 80,
                itemBuilder:
                    (_, int index) =>
                    //Carousal Sider,
                    TbrandCard(onTap: () => {Get.to(BrandproductsScreen())}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
