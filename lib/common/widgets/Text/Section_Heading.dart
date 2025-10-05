//import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TsectionHeading extends StatelessWidget {
  final Color? TextColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  const TsectionHeading({
    super.key,
    this.TextColor,
    this.showActionButton = false,
    required this.title,
    this.buttonTitle = "View All",
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return /* Padding(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      child: */ Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: TextColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),

        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
      //),
    );
  }
}
