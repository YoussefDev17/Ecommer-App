//import 'package:e_commerce_customer_app_new/common/widgets/Layouts/grid_Layout.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Layouts/grid_Layout.dart';
import 'package:e_commerce_customer_app_new/common/widgets/SearchBar/Search_Bar.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/tabbar.dart';
//import 'package:e_commerce_customer_app_new/common/widgets/produts_Cards/brand_Show_Case.dart';
import 'package:e_commerce_customer_app_new/common/widgets/produts_Cards/card_menu_Icon.dart';
import 'package:e_commerce_customer_app_new/common/widgets/produts_Cards/productCard_Horizontal.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Shop/Widgets/CategoryTab.dart';
//import 'package:e_commerce_customer_app_new/common/widgets/produts_Cards/productCard_Horizontal.dart';
//import 'package:e_commerce_customer_app_new/features/shop/screens/Shop/Widgets/TshopAppBar.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
//import 'package:iconsax/iconsax.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TappBar(
          title: Text(
            TTexts.ShopAppBar,
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          actions: [TcardIcounCounter(onPressed: () => {})],
        ),

        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor:
                    THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                expandedHeight: 450,

                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: TSizes.spaceBtwItems),
                      TsearchContainer(),
                      SizedBox(height: TSizes.spaceBtwSections),
                      TsectionHeading(
                        title: "Popular Product",
                        showActionButton: true,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),

                      TgridLayout(
                        mainAxisAlignment: 80,
                        itemCount: 4,
                        itemBuilder: (_, int index) {
                          return GestureDetector(
                            onTap: () => {},
                            child: TbrandCard(showBorder: true),
                          );
                        },
                        //Carousal Sider,
                      ),
                    ],
                  ),
                ),
                //Tab Bar
                bottom: Ttabbar(
                  tabs: [
                    Tab(text: 'Sport'),
                    Tab(text: 'Furniture'),
                    Tab(text: 'Electronics'),
                    Tab(text: 'Clothes'),
                    Tab(text: 'kitchen'),
                  ],
                ),
              ),
            ];
          },

          body: TabBarView(
            children: [
              TcategoryTab(),
              TcategoryTab(),
              TcategoryTab(),
              TcategoryTab(),

              TcategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
