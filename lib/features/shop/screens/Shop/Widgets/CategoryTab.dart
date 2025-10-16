import 'package:e_commerce_customer_app_new/common/widgets/Brands/brand_Show_Case.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Layouts/grid_Layout.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/Cart/productCard_Vertical.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TcategoryTab extends StatelessWidget {
  const TcategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TbrandShowCase(
                Images: [
                  TImages.productImage1,
                  TImages.productImage1,
                  TImages.productImage1,
                ],
              ),

              TsectionHeading(
                title: 'You Might Like',
                onPressed: () {},
                showActionButton: true,
              ),

              SizedBox(height: TSizes.spaceBtwItems),
              TgridLayout(
                itemCount: 4,
                itemBuilder:
                    (_, int index) =>
                    //Carousal Sider,
                    TproductCardVertical(
                      imgUrl: TImages.productImage1,
                      title: "Green Like Sport",
                      subTitle: "Nike",
                      price: "12.00",
                      onTap: () => {},
                      onFavoritePressed: () => {},
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
