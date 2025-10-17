import 'package:e_commerce_customer_app_new/common/widgets/Product/Cart/CartItem.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Product/Cart/ProductQuantityAddAndRemove.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/product_Price.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TcartItems extends StatelessWidget {
  const TcartItems({super.key, required this.ShowAddRemoveButton});

  final bool ShowAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
      itemCount: 4,
      itemBuilder:
          (_, __) => Column(
            children: [
              TcartItem(),

              if (ShowAddRemoveButton)
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TproductQuantityAddAndRemove(),
                      TProductPriceText(price: '555'),
                    ],
                  ),
                ),
            ],
          ),
    );
  }
}
