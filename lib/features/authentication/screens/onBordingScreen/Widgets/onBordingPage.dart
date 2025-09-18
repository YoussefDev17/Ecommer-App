//import 'package:e_commerce_customer_app_new/utils/Theme/widget_themes/text_theme.dart';
//import 'package:e_commerce_customer_app_new/utils/constants/text_strings.dart';
import 'package:e_commerce_customer_app_new/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_customer_app_new/features/authentication/models/onBoardingModel.dart';

class onBoardinPage extends StatelessWidget {
  final Onboardingmodel model;
  const onBoardinPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: THelperFunctions.screenWidth() * 0.8,
              height: THelperFunctions.screenWidth() * 0.8,
              image: AssetImage(model.image),
            ),
            Column(
              children: [
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(model.subTitle, textAlign: TextAlign.center),
              ],
            ),

            const SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }
}
