import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.tEmail,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.tPassword,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),

          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text(TTexts.tRememberMe),
                ],
              ),

              TextButton(onPressed: () {}, child: Text(TTexts.tForgetPassword)),

              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.tSignup),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
