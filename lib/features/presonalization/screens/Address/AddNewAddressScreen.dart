import 'package:e_commerce_customer_app_new/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_customer_app_new/utils/constants/colors.dart';
import 'package:e_commerce_customer_app_new/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Addnewaddressscreen extends StatelessWidget {
  const Addnewaddressscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(
        showBackArrow: true,
        title: Text(
          'Add New Address',
          style: TextTheme.of(context).headlineMedium,
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user, color: TColors.borderDark),
                    labelText: 'Name',
                  ),
                ),

                SizedBox(height: TSizes.spaceBtwItems),

                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile, color: TColors.borderDark),
                    labelText: 'Phone Number',
                  ),
                ),

                SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.home,
                            color: TColors.borderDark,
                          ),
                          labelText: 'Street',
                        ),
                      ),
                    ),

                    SizedBox(width: TSizes.spaceBtwItems),

                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.code,
                            color: TColors.borderDark,
                          ),
                          labelText: 'Postal Code',
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.building,
                            color: TColors.borderDark,
                          ),
                          labelText: 'City',
                        ),
                      ),
                    ),

                    SizedBox(width: TSizes.spaceBtwItems),

                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.activity,
                            color: TColors.borderDark,
                          ),
                          labelText: 'State',
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: TSizes.spaceBtwItems),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.global, color: TColors.borderDark),
                    labelText: 'Country',
                  ),
                ),

                SizedBox(height: TSizes.spaceBtwSections),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
