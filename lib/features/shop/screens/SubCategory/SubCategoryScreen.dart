import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Rounded_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/ProductCards/productCard_Horizontal.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/T_Brand_Title_Text_With_Verified_Icon.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/product_Price.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Subcategoryscreen extends StatelessWidget {
  const Subcategoryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(title: Text("Sub Category title"), showBackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TroundedImage(
                ImgUrl: TImages.promoBanner2,
                IsNetworkImg: false,
                width: double.infinity,

                fit: BoxFit.cover,
                borderRadius: TSizes.lg,
                applyImageRadius: true,
              ),

              SizedBox(height: TSizes.spaceBtwSections),

              //sub category section
              Column(
                children: [
                  TsectionHeading(
                    title: "Sub Category Title",
                    showActionButton: true,
                  ),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder:
                          (context, index) =>
                              SizedBox(width: TSizes.spaceBtwItems),
                      shrinkWrap: true,

                      itemCount: 2,
                      scrollDirection: Axis.horizontal,

                      itemBuilder:
                          (context, index) => const TproductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
