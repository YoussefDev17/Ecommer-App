import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Curved_Edges/Curved_Edge_Widget.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Rounded_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/features/shop/Controllers/ImageController.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconsax/iconsax.dart';

class TproductImageSlider extends StatelessWidget {
  const TproductImageSlider({
    super.key,
    required this.isDark,
    required this.imageController,
  });

  final bool isDark;
  final ImageController imageController;

  @override
  Widget build(BuildContext context) {
    return TcurveEdgeWidget(
      child: Container(
        color: isDark ? TColors.darkerGrey : TColors.lightContainer,
        child: Stack(
          children: [
            SizedBox(
              height: 350,
              child: Center(
                child: Obx(
                  () => Padding(
                    padding: const EdgeInsets.all(
                      TSizes.productImageRadius * 2,
                    ),
                    child: Image(
                      image: AssetImage(imageController.selectedImage.value),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: TSizes.defaultSpace,
              right: 0,

              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder:
                      (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                  itemBuilder:
                      (_, index) => TroundedImage(
                        width: 80,
                        ImgUrl: imageController.selectedImage.value,
                        BackgroundColor: isDark ? TColors.grey : TColors.white,
                        border: Border.all(color: TColors.borderDark),
                        padding: const EdgeInsets.all(TSizes.sm),
                      ),
                ),
              ),
            ),

            const TappBar(
              showBackArrow: true,
              actions: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
