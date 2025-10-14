import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/device/device_utility.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';

class Ttabbar extends StatelessWidget implements PreferredSizeWidget {
  const Ttabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isdarkMode = THelperFunctions.isDarkMode(context);
    return Material(
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        unselectedLabelColor: TColors.borderDark,
        indicatorColor: TColors.black,
        labelColor: isdarkMode ? TColors.white : TColors.black,
        tabAlignment: TabAlignment.start, // requires Flutter 3.10+
        padding: EdgeInsets.zero, // remove default side padding
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
