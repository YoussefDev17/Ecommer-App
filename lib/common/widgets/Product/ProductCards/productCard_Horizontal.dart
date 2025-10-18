import 'package:e_commerce_customer_app_new/common/styles/Shadows.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Rounded_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/T_Brand_Title_Text_With_Verified_Icon.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/product_Price.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/product_title_text.dart';

import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';

import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TproductCardHorizontal extends StatelessWidget {
  const TproductCardHorizontal({super.key, this.showBorder = false});
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => {},
      child: Container(
        width: 300,
        //margin: const EdgeInsets.all(1),
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: isDark ? TColors.darkGrey : TColors.lightGrey,
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          //boxShadow: [TShadowStyle.verticalProductShadow],
        ),
        child: Row(
          children: [
            TRoundedContainer(
              height: 120,
              backgroundColor: TColors.lightGrey,

              child: Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: TroundedImage(
                      ImgUrl: TImages.productImage1,
                      applyImageRadius: true,
                    ),
                  ),
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelSmall!.apply(color: TColors.black),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      width: 20,
                      height: 20,
                      icon: Iconsax.heart,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            //Details
            SizedBox(
              width: 140,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.sm, top: TSizes.sm),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize:
                          MainAxisSize
                              .min, // ✅ prevents the unbounded height error
                      children: [
                        TproductTitleText(
                          title:
                              'Green Nike Half Shirt and I will bee first millionaire',
                          smalSize: true,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems / 2),
                        TBrandTitleWithVerifiedIcon(title: 'Nike'),
                        //Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TProductPriceText(price: '435', isLarge: false),

                            Container(
                              decoration: BoxDecoration(
                                color: TColors.dark,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(TSizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                    TSizes.productImageRadius,
                                  ),
                                ),
                              ),
                              child: const SizedBox(
                                width: TSizes.iconLg * 1.2,
                                height: TSizes.iconLg * 1.1,
                                child: Icon(Iconsax.add, color: TColors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
