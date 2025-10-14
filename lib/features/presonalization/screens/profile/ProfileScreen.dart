import 'package:e_commerce_customer_app_new/common/widgets/Images/T_Circular_Image.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Text/Section_Heading.dart';
import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/features/presonalization/screens/profile/widgets/profile_Menu.dart';
import 'package:e_commerce_customer_app_new/utils/constants/image_strings.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(title: Text('Profile'), showBackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TcircularImage(
                      ImgUrl: TImages.user,
                      width: 70,
                      height: 70,
                      padding: 0,
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    TextButton(
                      onPressed: () {},
                      child: const Text('change Profile Picture'),
                    ),

                    //SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems / 2),
              TsectionHeading(title: 'Profile Information'),

              TprofileMenu(Title: 'Name', Value: 'Youssef', onpressed: () {}),
              TprofileMenu(Title: 'Name', Value: 'Youssef', onpressed: () {}),
              Divider(),
              TsectionHeading(title: 'Personel Information'),
              SizedBox(height: TSizes.spaceBtwItems / 2),
              TprofileMenu(Title: 'User ID :', Value: '45', onpressed: () {}),
              TprofileMenu(
                Title: 'E-mail :',
                Value: '@contact',
                onpressed: () {},
              ),
              TprofileMenu(
                Title: 'Phone Num :',
                Value: '6655444',
                onpressed: () {},
              ),
              TprofileMenu(Title: 'Gender :', Value: 'Male', onpressed: () {}),
              TprofileMenu(
                Title: 'Date Of Birth :',
                Value: '1999',
                onpressed: () {},
              ),

              const Divider(),
              SizedBox(height: TSizes.spaceBtwItems / 2),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
