import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: TColors.borderLight,
    floatingLabelStyle: const TextStyle(color: TColors.borderLight),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: TColors.borderLight),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    prefixIconColor: TColors.primary,
    floatingLabelStyle: const TextStyle(color: TColors.primary),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
      borderSide: const BorderSide(width: 2, color: TColors.primary),
    ),
  );
}
