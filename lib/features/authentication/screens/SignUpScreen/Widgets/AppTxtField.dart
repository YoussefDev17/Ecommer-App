import 'package:flutter/material.dart';
//import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';

class AppTxtField extends StatelessWidget {
  final isPassword;
  final isObscure;
  final label;
  final Icon icon;
  const AppTxtField({
    super.key,
    required this.label,
    required this.icon,
    this.isObscure = false,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: icon,
        suffixIcon:
            isPassword ? const Icon(Icons.visibility_off_outlined) : null,
        // border: TSizes.inputFieldRadius,
      ),
    );
  }
}
