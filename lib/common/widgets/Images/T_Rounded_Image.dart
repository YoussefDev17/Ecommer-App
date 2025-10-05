import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TroundedImage extends StatelessWidget {
  final String ImgUrl;
  final bool IsNetworkImg;
  final double? width, height;
  final BoxBorder? border;
  final Color BackgroundColor;
  final BoxFit fit;
  final double borderRadius;
  final VoidCallback? onPressed;
  final bool applyImageRadius;
  final EdgeInsetsGeometry? padding;

  const TroundedImage({
    super.key,
    required this.ImgUrl,
    this.IsNetworkImg = false,
    this.width,
    this.height,
    this.border,
    this.BackgroundColor = TColors.lightBackground,
    this.fit = BoxFit.contain,
    this.borderRadius = TSizes.md,
    this.onPressed,
    this.applyImageRadius = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        border: border,
        color: BackgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),

      child: ClipRRect(
        borderRadius:
            applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,

        child: Image(
          image: IsNetworkImg ? NetworkImage(ImgUrl) : AssetImage(ImgUrl),
        ),
      ),
    );
  }
}
