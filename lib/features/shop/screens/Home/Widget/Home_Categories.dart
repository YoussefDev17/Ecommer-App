import 'package:e_commerce_customer_app_new/common/widgets/Image_Text_Widget/Vertical_Image_Text.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/SubCategory/SubCategoryScreen.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';

import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ThomeCategory extends StatelessWidget {
  const ThomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TverticalImage(
            title: "Shoes Category",
            image: TImages.shoeIcon,
            textColor: TColors.white,
            onTap: () => {Get.to(Subcategoryscreen())},
          );
        },
      ),
    );
  }
}
