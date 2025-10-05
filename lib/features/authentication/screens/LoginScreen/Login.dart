import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/common/styles/spacing_styles.dart';
import 'Widgets/Login_header.dart';
import 'Widgets/Login_Form.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Login_SignUp/form_Divider.dart';
import 'package:e_commerce_customer_app_new/common/widgets/Login_SignUp/social_Button.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginHeader(),
              const LoginForm(),
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
