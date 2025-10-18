import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Rounded_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/T_Brand_Title_Text_With_Verified_Icon.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/enums.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TbrandCard extends StatelessWidget {
  final bool showBorder;
  final Function()? onTap;
  const TbrandCard({super.key, this.showBorder = true, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        backgroundColor: Colors.transparent,
        showBorder: showBorder,
        borderColor: TColors.grey,
        child: Row(
          children: [
            Flexible(
              child: TroundedImage(
                ImgUrl: TImages.clothIcon,
                applyImageRadius: true,
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  Text(
                    'Green Like Sport',
                    style: Theme.of(context).textTheme.labelMedium,

                    overflow: TextOverflow.ellipsis,
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
