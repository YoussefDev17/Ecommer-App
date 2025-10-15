import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Circular_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/T_Brand_Title_Text_With_Verified_Icon.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/product_Price.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/product_title_text.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';

class TproductMetaData extends StatelessWidget {
  const TproductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContainer(
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
                ).textTheme.labelLarge!.apply(color: TColors.black),
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems),

            Text(
              '666',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems),

            TProductPriceText(price: '999', isLarge: true),
            SizedBox(height: TSizes.spaceBtwItems / 1.5),
          ],
        ),
        //Product Title
        TproductTitleText(title: 'Green Nike Sport Shirt', smalSize: true),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //Product Stock
        Row(
          children: [
            TproductTitleText(title: 'status :'),
            SizedBox(width: TSizes.spaceBtwItems / 1.5),

            Text('In Stock', style: Theme.of(context).textTheme.titleSmall),
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //brand
        Row(
          children: [
            TcircularImage(
              ImgUrl: TImages.nikeLogo,
              width: 30,
              height: 30,
              overlayColor: isDark ? TColors.white : TColors.black,
            ),
            TBrandTitleWithVerifiedIcon(title: 'Nike'),
          ],
        ),
      ],
    );
  }
}
