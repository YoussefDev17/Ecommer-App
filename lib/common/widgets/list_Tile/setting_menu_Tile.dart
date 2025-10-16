import 'package:e_commerce_customer_app_new/common/widgets/Icons/t_circular_icon.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TsettingMenuTile extends StatelessWidget {
  const TsettingMenuTile({
    super.key,
    required this.icon,
    required this.Title,
    required this.SubTitle,
    this.trailing,
    required this.onTap,
  });

  final IconData icon;
  final String Title, SubTitle;
  final Widget? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: TCircularIcon(
        icon: icon,
        width: 30,
        height: 30,
        color: TColors.primary,
      ),
      title: Text(
        Title,
        style: Theme.of(
          context,
        ).textTheme.titleMedium!.apply(color: TColors.dark),
      ),
      subtitle: Text(
        SubTitle,
        style: Theme.of(
          context,
        ).textTheme.labelMedium!.apply(color: TColors.darkGrey),
      ),

      trailing: trailing,
    );
  }
}
