import 'package:e_commerce_customer_app_new/common/widgets/Layouts/grid_Layout.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/ProductCards/productCard_Vertical.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductDetails/ProductDetail.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TsortibaleProduct extends StatelessWidget {
  const TsortibaleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items:
              [
                'Higher Price',
                'Lower Price',
                'Popular',
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
          onChanged: (value) {},
        ),

        SizedBox(height: TSizes.spaceBtwSections),

        TgridLayout(
          itemCount: 10,
          itemBuilder:
              (_, int index) =>
              //Carousal Sider,
              TproductCardVertical(
                imgUrl: TImages.productImage1,
                title: "Green Like Sport",
                subTitle: "Nike",
                price: "12.00",
                onTap: () => {Get.to(ProductdetailScreen())},
                onFavoritePressed: () => {},
              ),
        ),
      ],
    );
  }
}
