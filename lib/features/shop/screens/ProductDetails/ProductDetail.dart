import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
import 'package:e_commerce_customer_app_new/features/shop/Controllers/ImageController.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductReviews/RatingAndReviewScreen.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductDetails/Widget/BottomAddToCartWidget.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductDetails/Widget/ProductAttributes.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductDetails/Widget/ProductMetaData.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductDetails/Widget/RatingShareWidget.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/ProductDetails/Widget/product_Detail_Image_Slider.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductdetailScreen extends StatelessWidget {
  const ProductdetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageController imageController = Get.put(ImageController());
    var isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TbottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TproductImageSlider(
              isDark: isDark,
              imageController: imageController,
            ),

            //Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  TraitingShareWidget(),
                  TproductMetaData(),
                  TproductAttributes(),

                  SizedBox(height: TSizes.spaceBtwItems),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Text('checkout'),
                    ),
                  ),

                  //Description
                  SizedBox(height: TSizes.spaceBtwItems),
                  TsectionHeading(title: 'Descption'),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  const ReadMoreText(
                    'This Product Descriptio .... i will upload descirption from back end',
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 14),
                    lessStyle: TextStyle(fontSize: 14),
                  ),

                  //Review
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TsectionHeading(
                        title: 'Review(199)',
                        onPressed: () => {Get.to(RatingAndReviewScreen())},
                      ),
                      IconButton(
                        onPressed: () => {Get.to(RatingAndReviewScreen())},
                        icon: Icon(Iconsax.arrow_right_3),
                      ),
                    ],
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
