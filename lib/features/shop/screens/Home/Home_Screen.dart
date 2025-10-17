import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/primary_header_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Layouts/grid_Layout.dart';
//import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Rounded_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/SearchBar/Search_Bar.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/Cart/productCard_Vertical.dart';
//import 'package:e_commerce_customer_app_new/features/shop/models/product_Card.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Home/Widget/Home_Categories.dart';
//import 'package:e_commerce_customer_app_new/features/shop/screens/Widgets/Horizontal_ListViewCategory.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Home/Widget/ThomeAppBar.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Home/Widget/promo_Slider.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductDetails/ProductDetail.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TprimaryHeaderContainer(
              child: Column(
                children: [
                  Thomeappbar(),

                  const SizedBox(height: TSizes.spaceBtwItems),

                  TsearchContainer(),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TsectionHeading(
                          title: "Popular Categories",
                          TextColor: TColors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        ThomeCategory(),
                      ],
                    ),
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ThomeSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TsectionHeading(
                    title: "Popular Product",
                    showActionButton: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TgridLayout(
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
                    itemCount: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
