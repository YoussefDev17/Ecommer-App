import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TcardIcounCounter extends StatelessWidget {
  const TcardIcounCounter({
    super.key,
    this.iconColor = TColors.white,
    required this.OnPressed,
  });
  final Color? iconColor;
  final VoidCallback OnPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: OnPressed,
          icon: const Icon(Iconsax.shopping_bag, color: Colors.black),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: TColors.white,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
