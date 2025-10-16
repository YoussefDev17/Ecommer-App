import 'package:e_commerce_customer_app_new/common/widgets/Custom_Shape/Container/rounded_Container.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TsingleAddress extends StatelessWidget {
  const TsingleAddress({super.key, required this.IsSelectedAddress});

  final bool IsSelectedAddress;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      // Your container's content and styling
      width: double.infinity,
      borderColor: IsSelectedAddress ? TColors.dark : TColors.borderLight,
      backgroundColor:
          IsSelectedAddress ? TColors.darkGrey : Colors.transparent,
      showBorder: true,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 2,

            child: Icon(IsSelectedAddress ? Iconsax.tick_circle : null),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Coding With Youssef',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: TSizes.sm / 2),
              Text('06401928', maxLines: 1, overflow: TextOverflow.ellipsis),
              SizedBox(height: TSizes.sm / 2),
              Text(
                'New York City 40°43′N 74°00′W New York City 40°43′N 74°00′W',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
