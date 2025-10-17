import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/features/shop/screens/Order/widget/OrderList.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class orderScreen extends StatelessWidget {
  const orderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(
        showBackArrow: true,
        title: Text('Orders', style: TextTheme.of(context).headlineMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: TorderList(),
      ),
    );
  }
}

class TorderTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final Widget? trailingIcon;
  const TorderTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon, size: 20),
      title: Text(title, style: TextTheme.of(context).labelSmall),
      subtitle: Text(subtitle, style: TextTheme.of(context).titleSmall),
      trailing: trailingIcon,
    );
  }
}
