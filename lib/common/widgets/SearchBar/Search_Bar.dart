import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:e_commerce_customer_app_new/features/shop/Controllers/search_Controller.dart';
import 'package:e_commerce_customer_app_new/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class TsearchContainer extends StatelessWidget {
  final IconData? icon;
  final String Title;
  final bool showBackground, showBorder;
  final VoidCallback? OnTap;

  TsearchContainer({
    super.key,
    this.Title = "Search Bar",
    this.icon = Iconsax.search_normal,
    this.showBorder = true,
    this.showBackground = true,
    this.OnTap,
  });

  //final controller = Get.put(searchController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: /* Column(
          children: [ */ Container(
          width: TDeviceUtils.getScreenWidth(context),
          height: 50,
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: TColors.white,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: Border.all(color: TColors.grey),
          ),
          child: Row(
            children: [
              Icon(icon, color: TColors.darkerGrey),
              const SizedBox(width: TSizes.spaceBtwSections),
              Text(Title, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),

          /*  child: TextField(
                //controller: _searchController,
                onChanged: controller.updateSearch,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ), */
        ),

        /* Obx(
              () =>
                  controller.isSearching.value
                      ? SizedBox(
                        height: 200, // تعطي حجم للـ List
                        child: ListView.builder(
                          itemCount: controller.filteredItems.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(controller.filteredItems[index]),
                            );
                          },
                        ),
                      )
                      : SizedBox.shrink(),
            ), */
        /* ], */
        /*  */
      ),
    );
    /* ); */
  }
}
