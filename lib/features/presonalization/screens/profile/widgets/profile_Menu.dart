import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TprofileMenu extends StatelessWidget {
  const TprofileMenu({
    super.key,
    required this.Title,
    required this.Value,
    required this.onpressed,
    this.icon = Iconsax.arrow_right_34,
  });
  final String Title;
  final String Value;
  final VoidCallback onpressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              Title,
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          //SizedBox(width: TSizes.spaceBtwItems),
          Expanded(
            flex: 5,
            child: Text(
              Value,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          Expanded(child: Icon(icon)),
        ],
      ),
    );
  }
}
