import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Rounded_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/T_Brand_Title_Text_With_Verified_Icon.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/product_title_text.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TcartItem extends StatelessWidget {
  const TcartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TroundedImage(ImgUrl: TImages.productImage1, width: 40, height: 40),

        SizedBox(width: TSizes.spaceBtwItems),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TBrandTitleWithVerifiedIcon(title: 'Nike'),
              Flexible(
                child: TproductTitleText(
                  title:
                      'This Is Description Of The Product This Is Description Of The Product ',
                  smalSize: true,
                  maxline: 1,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color : ',
                      style: TextTheme.of(context).bodySmall,
                    ),

                    TextSpan(
                      text: 'Green ',
                      style: TextTheme.of(
                        context,
                      ).bodyLarge?.copyWith(color: TColors.black),
                    ),

                    TextSpan(
                      text: 'Size : ',
                      style: TextTheme.of(context).bodySmall,
                    ),

                    TextSpan(
                      text: 'UK',
                      style: TextTheme.of(
                        context,
                      ).bodyLarge?.copyWith(color: TColors.black),
                    ),
                  ],
                ),
              ),

              //Text('\$ 99.99', style: TextTheme.of(context).bodyMedium),
            ],
          ),
        ),
      ],
    );
  }
}
