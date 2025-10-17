import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TorderList extends StatelessWidget {
  const TorderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems),
      itemCount: 2,
      itemBuilder:
          (_, __) => TRoundedContainer(
            padding: const EdgeInsets.all(TSizes.sm),
            showBorder: true,
            borderColor: TColors.borderLight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Add your order list items here
                Row(
                  children: [
                    Icon(Icons.receipt_long),
                    SizedBox(width: TSizes.spaceBtwItems / 2),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Processing',
                            style: Theme.of(context).textTheme.bodySmall!.apply(
                              color: TColors.primary,
                              fontWeightDelta: 2,
                            ),
                          ),
                          Text(
                            '25th Dec, 2023',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),

                    IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.receipt_long),
                          SizedBox(width: TSizes.spaceBtwItems / 2),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Processing',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodySmall!.apply(
                                    color: TColors.primary,
                                    fontWeightDelta: 2,
                                  ),
                                ),
                                Text(
                                  '25th Dec, 2023',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.receipt_long),
                                SizedBox(width: TSizes.spaceBtwItems / 2),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Processing',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall!.apply(
                                          color: TColors.primary,
                                          fontWeightDelta: 2,
                                        ),
                                      ),
                                      Text(
                                        '25th Dec, 2023',
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.titleSmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
