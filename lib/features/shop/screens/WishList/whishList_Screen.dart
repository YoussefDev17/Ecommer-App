import 'package:e_commerce_customer_app_new/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Layouts/grid_Layout.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/ProductCards/productCard_Vertical.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Home/Home_Screen.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: TappBar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(HomeScreen()),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: TgridLayout(
          itemCount: 8,
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
      ),
    );
  }
}
