import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/features/authentication/screens/SignUpScreen/Widgets/AppTxtField.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:e_commerce_customer_app_new/features/authentication/screens/SignUpScreen/Widgets/terms_Condition_checkbox.dart';
//import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: AppTxtField(
                    label: TTexts.tFirstName,
                    icon: Icon(Icons.person_outline),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwInputFields),
                Expanded(
                  child: AppTxtField(
                    label: TTexts.tLastName,
                    icon: const Icon(Icons.person_outline),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            AppTxtField(
              label: TTexts.tUserName,
              icon: const Icon(Icons.person_outline),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            AppTxtField(
              label: TTexts.tEmail,
              icon: const Icon(Icons.email_outlined),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            AppTxtField(
              label: TTexts.tPhoneNumber,
              icon: const Icon(Icons.phone_outlined),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            AppTxtField(
              isObscure: true,
              isPassword: true,
              label: TTexts.tPassword,
              icon: const Icon(Icons.password_outlined),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            const TermsConditionCheckbox(),

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
      ),
    );
  }
}
