import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//mport 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class TappBar extends StatelessWidget implements PreferredSizeWidget {
  /*   final String titleText;
  final Widget? leadingWidget;
  final List<Widget>? actionWidgets; */
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const TappBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading:
            showBackArrow
                ? IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Iconsax.arrow_left),
                )
                : leadingIcon != null
                ? IconButton(
                  onPressed: leadingOnPressed,
                  icon: Icon(leadingIcon),
                )
                : null,

        title: title,
        centerTitle: false,
        actions: actions,

        // Add other AppBar properties like backgroundColor, elevation, etc.
        // backgroundColor: Colors.blue,
        //elevation: 4.0,
      ),
    );
  }
}
