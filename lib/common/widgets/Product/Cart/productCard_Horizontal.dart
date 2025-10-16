import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Circular_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/T_Brand_Title_Text_With_Verified_Icon.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/enums.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TbrandCard extends StatelessWidget {
  const TbrandCard({super.key, this.showBorder = false});
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => {},
      child: TRoundedContainer(
        borderColor: TColors.borderDark,
        padding: EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: TcircularImage(
                ImgUrl: TImages.nikeLogo,
                IsNetworkImg: false,
                BackgroundColor: Colors.transparent,
                overlayColor: isDark ? TColors.white : TColors.black,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TBrandTitleWithVerifiedIcon(
                    title: "Nike",
                    brandTextSize: TextSizes.large,
                  ),

                  //const SizedBox(height: TSizes.spaceBtwItems / 2),
                  Text(
                    "256 Product",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.labelMedium!,
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
