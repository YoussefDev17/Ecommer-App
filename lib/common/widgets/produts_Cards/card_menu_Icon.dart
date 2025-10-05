import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TcardCounterIcon extends StatelessWidget {
  final Color? iconColor;
  final VoidCallback onPressed;
  const TcardCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Container(
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          color: TColors.black.withOpacity(0.5),
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
    );
  }
}
