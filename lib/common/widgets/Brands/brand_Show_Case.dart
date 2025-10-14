import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/produts_Cards/productCard_Horizontal.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';

import 'package:flutter/material.dart';

class TbrandShowCase extends StatelessWidget {
  const TbrandShowCase({super.key, required this.Images});

  final List<String> Images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      //height: 400,
      borderColor: TColors.darkGrey,
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          TbrandCard(showBorder: false),
          Row(
            children:
                Images.map(
                  (image) => brandTopProductImageWidget(image, context),
                ).toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      margin: const EdgeInsets.only(right: TSizes.sm),

      backgroundColor:
          THelperFunctions.isDarkMode(context)
              ? TColors.lightBackground
              : TColors.lightGrey,
      //margin: const EdgeInsets.only(right: TSizes.md),
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(TImages.productImage1),
      ),
    ),
  );
}
