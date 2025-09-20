import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'Widgets/SignUp_Form.dart';
import 'package:e_commerce_customer_app_new/common/widgets/WidgetsLogin_SignUp/form_Divider.dart';
import 'package:e_commerce_customer_app_new/common/widgets/WidgetsLogin_SignUp/social_Button.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            //Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.tSignUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                TTexts.tSignUpSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              SignupForm(),
              const TFormDivider(Dividertext: TTexts.tSignInWithGoogle),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TsocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
