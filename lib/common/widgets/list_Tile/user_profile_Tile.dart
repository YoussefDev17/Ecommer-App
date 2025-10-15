import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Circular_Image.dart';
import 'package:e_commerce_customer_app_new/features/presonalization/screens/profile/ProfileScreen.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class TuserProfileTile extends StatelessWidget {
  const TuserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TcircularImage(
        ImgUrl: TImages.user,
        width: 40,
        height: 40,
        padding: 0,
      ),
      title: Text(
        'Coding With Youssef',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: TColors.white),
      ),
      subtitle: Text(
        'Contact Youssef Programmer',
        style: Theme.of(
          context,
        ).textTheme.bodySmall!.apply(color: TColors.white),
      ),

      trailing: IconButton(
        onPressed: () {
          Get.to(ProfileScreen()); // Navigate to SecondScreen
        },
        icon: Icon(Iconsax.edit, color: TColors.white),
      ),
    );
  }
}
