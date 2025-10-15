import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/product_Price.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/product_title_text.dart';
import 'package:e_commerce_customer_app_new/common/widgets/chips/choice_chips.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TproductAttributes extends StatelessWidget {
  const TproductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TRoundedContainer(
          width: double.infinity,

          backgroundColor: TColors.borderLight,
          showBorder: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Variation :'),
                  SizedBox(width: TSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TproductTitleText(title: 'Price :', smalSize: true),
                          SizedBox(width: TSizes.spaceBtwItems / 1.5),

                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: TSizes.spaceBtwItems),

                          TProductPriceText(price: '999', isLarge: true),
                        ],
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),
                      Row(
                        children: [
                          TproductTitleText(title: 'status :'),
                          SizedBox(width: TSizes.spaceBtwItems / 1.5),

                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              TproductTitleText(
                title:
                    'This Is The Description of The Product And Will Bee Max 4 Lines',
                smalSize: true,
                maxline: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        Column(
          children: [
            TproductTitleText(title: 'Colors'),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 5,
              children: [
                TchoiceChip(
                  selected: true,
                  text: 'Green',
                  onselected: (value) {},
                ),
                TchoiceChip(
                  selected: false,
                  text: 'Yellow',
                  onselected: (value) {},
                ),
                TchoiceChip(
                  selected: true,
                  text: 'Red',
                  onselected: (value) {},
                ),
                TchoiceChip(
                  selected: false,
                  text: 'Blue',
                  onselected: (value) {},
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems / 2),

        Column(
          children: [
            TproductTitleText(title: 'Sizes'),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TchoiceChip(
                  selected: true,
                  text: 'Eur 42',
                  onselected: (value) {},
                ),
                TchoiceChip(
                  selected: false,
                  text: 'Eur 43',
                  onselected: (value) {},
                ),
                TchoiceChip(
                  selected: false,
                  text: 'Eur 44 ',
                  onselected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
