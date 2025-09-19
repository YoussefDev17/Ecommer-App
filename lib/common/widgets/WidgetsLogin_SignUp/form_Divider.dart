import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({super.key, required this.Dividertext});
  final String Dividertext;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            endIndent: 5,
            indent: 60,
          ),
        ),
        Text(TTexts.otpFooter, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: isDark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            endIndent: 60,
            indent: 5,
          ),
        ),
      ],
    );
  }
}
